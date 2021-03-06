/////////////////////////////////////////////////////////////////////
//    Bus Interface Unit                                           //
//    Constants Package                                            //
/////////////////////////////////////////////////////////////////////


package biu_constants_pkg;
  typedef enum logic [2:0] {
     BYTE  = 3'b000,
     HWORD = 3'b001,
     WORD  = 3'b010,
     DWORD = 3'b011,
     QWORD = 3'b100,
     UNDEF_SIZE = 3'bxxx
  } biu_size_t;


  typedef enum logic [2:0] {
     SINGLE  = 3'b000,
     INCR    = 3'b001,
     WRAP4   = 3'b010,
     INCR4   = 3'b011,
     WRAP8   = 3'b100,
     INCR8   = 3'b101,
     WRAP16  = 3'b110,
     INCR16  = 3'b111,
     UNDEF_BURST = 3'bxxx
  } biu_type_t;


  //enumeration codes
  localparam [2:0] PROT_INSTRUCTION  = 3'b000;
  localparam [2:0] PROT_DATA         = 3'b001;
  localparam [2:0] PROT_USER         = 3'b000;
  localparam [2:0] PROT_PRIVILEGED   = 3'b010;
  localparam [2:0] PROT_NONCACHEABLE = 3'b000;
  localparam [2:0] PROT_CACHEABLE    = 3'b100;

  typedef enum logic [2:0] {
    //complex enumerations
    NONCACHEABLE_USER_INSTRUCTION       = 3'b000,
    NONCACHEABLE_USER_DATA              = 3'b001,
    NONCACHEABLE_PRIVILEGED_INSTRUCTION = 3'b010,
    NONCACHEABLE_PRIVILEGED_DATA        = 3'b011,
    CACHEABLE_USER_INSTRUCTION          = 3'b100,
    CACHEABLE_USER_DATA                 = 3'b101,
    CACHEABLE_PRIVILEGED_INSTRUCTION    = 3'b110,
    CACHEABLE_PRIVILEGED_DATA           = 3'b111
  } biu_prot_t;
endpackage

