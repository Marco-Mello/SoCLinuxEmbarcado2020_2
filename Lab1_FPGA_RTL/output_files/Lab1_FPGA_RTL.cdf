/* Quartus Prime Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition */
JedecChain;
	FileRevision(JESD32A);
	DefaultMfr(6E);

	P ActionCode(Ign)
		Device PartName(SOCVHPS) MfrSpec(OpMask(0));
	P ActionCode(Cfg)
		Device PartName(5CSXFC6D6F31) Path("/home/labarqcomp/SoCLinuxEmbarcado2020_2/Lab1_FPGA_RTL/output_files/") File("Lab1_FPGA_RTL.sof") MfrSpec(OpMask(1));

ChainEnd;

AlteraBegin;
	ChainType(JTAG);
AlteraEnd;
