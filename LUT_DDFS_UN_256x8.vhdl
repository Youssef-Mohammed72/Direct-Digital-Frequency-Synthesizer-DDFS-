-----------------------------------------------------------------------------
-----------------------------------------------------------------------------
------------------- Author:    Youssef Mohammed AbdelFattah -----------------
------------------- Component: Look Up Table               	-----------------
------------------- Version:   1.0 						    -----------------
-----------------------------------------------------------------------------
-----------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
-- use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;



entity LUT_DDFS is
	port (
		LUT_line : in  std_logic_vector(7 downto 0);
		LUT_data : out std_logic_vector(7 downto 0) 
	);
end LUT_DDFS;

architecture rtl of LUT_DDFS is
	type LUT_t is array (natural range 0 to 255) of integer;
	constant LUT: LUT_t := (
		0 => 127,
		1 => 130,
		2 => 133,
		3 => 136,
		4 => 139,
		5 => 142,
		6 => 145,
		7 => 148,
		8 => 151,
		9 => 154,
		10 => 157,
		11 => 161,
		12 => 164,
		13 => 166,
		14 => 169,
		15 => 172,
		16 => 175,
		17 => 178,
		18 => 181,
		19 => 184,
		20 => 187,
		21 => 189,
		22 => 192,
		23 => 195,
		24 => 197,
		25 => 200,
		26 => 202,
		27 => 205,
		28 => 207,
		29 => 210,
		30 => 212,
		31 => 214,
		32 => 217,
		33 => 219,
		34 => 221,
		35 => 223,
		36 => 225,
		37 => 227,
		38 => 229,
		39 => 231,
		40 => 232,
		41 => 234,
		42 => 236,
		43 => 237,
		44 => 239,
		45 => 240,
		46 => 242,
		47 => 243,
		48 => 244,
		49 => 245,
		50 => 246,
		51 => 247,
		52 => 248,
		53 => 249,
		54 => 250,
		55 => 251,
		56 => 251,
		57 => 252,
		58 => 252,
		59 => 253,
		60 => 253,
		61 => 253,
		62 => 253,
		63 => 253,
		64 => 253,
		65 => 253,
		66 => 253,
		67 => 253,
		68 => 253,
		69 => 252,
		70 => 252,
		71 => 251,
		72 => 251,
		73 => 250,
		74 => 249,
		75 => 249,
		76 => 248,
		77 => 247,
		78 => 246,
		79 => 245,
		80 => 243,
		81 => 242,
		82 => 241,
		83 => 239,
		84 => 238,
		85 => 236,
		86 => 235,
		87 => 233,
		88 => 231,
		89 => 230,
		90 => 228,
		91 => 226,
		92 => 224,
		93 => 222,
		94 => 220,
		95 => 218,
		96 => 215,
		97 => 213,
		98 => 211,
		99 => 209,
		100 => 206,
		101 => 204,
		102 => 201,
		103 => 199,
		104 => 196,
		105 => 193,
		106 => 191,
		107 => 188,
		108 => 185,
		109 => 182,
		110 => 180,
		111 => 177,
		112 => 174,
		113 => 171,
		114 => 168,
		115 => 165,
		116 => 162,
		117 => 159,
		118 => 156,
		119 => 153,
		120 => 150,
		121 => 147,
		122 => 144,
		123 => 141,
		124 => 137,
		125 => 134,
		126 => 131,
		127 => 128,
		128 => 125,
		129 => 122,
		130 => 119,
		131 => 116,
		132 => 112,
		133 => 109,
		134 => 106,
		135 => 103,
		136 => 100,
		137 => 97,
		138 => 94,
		139 => 91,
		140 => 88,
		141 => 85,
		142 => 82,
		143 => 79,
		144 => 76,
		145 => 73,
		146 => 71,
		147 => 68,
		148 => 65,
		149 => 62,
		150 => 60,
		151 => 57,
		152 => 54,
		153 => 52,
		154 => 49,
		155 => 47,
		156 => 44,
		157 => 42,
		158 => 40,
		159 => 38,
		160 => 35,
		161 => 33,
		162 => 31,
		163 => 29,
		164 => 27,
		165 => 25,
		166 => 23,
		167 => 22,
		168 => 20,
		169 => 18,
		170 => 17,
		171 => 15,
		172 => 14,
		173 => 12,
		174 => 11,
		175 => 10,
		176 => 8,
		177 => 7,
		178 => 6,
		179 => 5,
		180 => 4,
		181 => 4,
		182 => 3,
		183 => 2,
		184 => 2,
		185 => 1,
		186 => 1,
		187 => 0,
		188 => 0,
		189 => 0,
		190 => 0,
		191 => 0,
		192 => 0,
		193 => 0,
		194 => 0,
		195 => 0,
		196 => 0,
		197 => 1,
		198 => 1,
		199 => 2,
		200 => 2,
		201 => 3,
		202 => 4,
		203 => 5,
		204 => 6,
		205 => 7,
		206 => 8,
		207 => 9,
		208 => 10,
		209 => 11,
		210 => 13,
		211 => 14,
		212 => 16,
		213 => 17,
		214 => 19,
		215 => 21,
		216 => 22,
		217 => 24,
		218 => 26,
		219 => 28,
		220 => 30,
		221 => 32,
		222 => 34,
		223 => 36,
		224 => 39,
		225 => 41,
		226 => 43,
		227 => 46,
		228 => 48,
		229 => 51,
		230 => 53,
		231 => 56,
		232 => 58,
		233 => 61,
		234 => 64,
		235 => 66,
		236 => 69,
		237 => 72,
		238 => 75,
		239 => 78,
		240 => 81,
		241 => 84,
		242 => 87,
		243 => 89,
		244 => 92,
		245 => 96,
		246 => 99,
		247 => 102,
		248 => 105,
		249 => 108,
		250 => 111,
		251 => 114,
		252 => 117,
		253 => 120,
		254 => 123,
		255 => 127
);

begin
	LUT_data <= std_logic_vector(TO_UNSIGNED(LUT(TO_INTEGER(unsigned(LUT_line))), 8));
end rtl;