#include <pocketsphinx.h>

int main(int argc, char *argv[])
{
	ps_decoder_t *ps;
	cmd_ln_t *config;
	FILE *fh;
	char const *hyp, *uttid;
	int16 buf[512];
	int rv;
	int32 score;

/*
	config = cmd_ln_init(NULL, ps_args(), TRUE,
					"-hmm", MODELDIR "/hmm/en_US/hub4wsj_sc_8k",
					"-lm", MODELDIR "/lm/en/turtle.DMP",
					"-dict", MODELDIR "/lm/en/turtle.dic",
					NULL);
*/
	config = cmd_ln_init(NULL, ps_args(), TRUE,
					"-hmm", "../zh_test/zh_broadcastnews_ptm256_8000",
					"-lm", "../zh_test/1247.lm",
					"-dict", "../zh_test/1247.dic",
					NULL);
	if (config == NULL)
		return 1;

	ps = ps_init(config);
	if (ps == NULL)
		return 1;

	//fh = fopen("../zh_test/test.raw", "rb");
	fh = fopen("../zh_test/test.wav", "rb");
	if (fh == NULL)
	{
		perror("Failed to open goforward.raw");
		return 1;
	}

	rv = ps_start_utt(ps);
	if (rv < 0)
		return 1;
	while (!feof(fh))
	{
		size_t nsamp;
		nsamp = fread(buf, 2, 512, fh);
		rv = ps_process_raw(ps, buf, nsamp, FALSE, FALSE);
	}

	rv = ps_end_utt(ps);
	if (rv < 0)
		return 1;
	hyp = ps_get_hyp(ps, &score);
	if (hyp == NULL)
		return 1;
	printf("Recognized: %s\n", hyp);

	fclose(fh);
	ps_free(ps);
	return 0;
}
