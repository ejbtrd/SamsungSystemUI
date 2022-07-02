.class public abstract enum Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;
.super Ljava/lang/Enum;
.source "InstructionCodec.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_00X:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_10T:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_10X:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_11N:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_11X:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_12X:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_20BC:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_20T:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_21C:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_21H:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_21S:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_21T:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_22B:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_22C:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_22CS:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_22S:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_22T:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_22X:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_23X:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_30T:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_31C:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_31I:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_31T:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_32S:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_32X:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_33X:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_35C:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_35MI:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_35MS:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_3RC:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_3RMI:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_3RMS:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_40SC:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_41C:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_51L:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_52C:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_5RC:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_FILL_ARRAY_DATA_PAYLOAD:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_PACKED_SWITCH_PAYLOAD:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_SPARSE_SWITCH_PAYLOAD:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 42

    .line 32
    new-instance v0, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$1;

    const-string v1, "FORMAT_00X"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->FORMAT_00X:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    .line 45
    new-instance v1, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$2;

    const-string v3, "FORMAT_10X"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->FORMAT_10X:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    .line 60
    new-instance v3, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$3;

    const-string v5, "FORMAT_12X"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->FORMAT_12X:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    .line 79
    new-instance v5, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$4;

    const-string v7, "FORMAT_11N"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->FORMAT_11N:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    .line 98
    new-instance v7, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$5;

    const-string v9, "FORMAT_11X"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$5;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->FORMAT_11X:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    .line 114
    new-instance v9, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$6;

    const-string v11, "FORMAT_10T"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$6;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->FORMAT_10T:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    .line 131
    new-instance v11, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$7;

    const-string v13, "FORMAT_20T"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$7;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->FORMAT_20T:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    .line 149
    new-instance v13, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$8;

    const-string v15, "FORMAT_20BC"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$8;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->FORMAT_20BC:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    .line 168
    new-instance v15, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$9;

    const-string v14, "FORMAT_22X"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$9;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->FORMAT_22X:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    .line 187
    new-instance v14, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$10;

    const-string v12, "FORMAT_21T"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$10;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->FORMAT_21T:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    .line 206
    new-instance v12, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$11;

    const-string v10, "FORMAT_21S"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$11;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->FORMAT_21S:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    .line 225
    new-instance v10, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$12;

    const-string v8, "FORMAT_21H"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$12;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->FORMAT_21H:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    .line 255
    new-instance v8, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$13;

    const-string v6, "FORMAT_21C"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$13;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->FORMAT_21C:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    .line 275
    new-instance v6, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$14;

    const-string v4, "FORMAT_23X"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$14;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->FORMAT_23X:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    .line 296
    new-instance v4, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$15;

    const-string v2, "FORMAT_22B"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$15;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->FORMAT_22B:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    .line 318
    new-instance v2, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$16;

    const-string v6, "FORMAT_22T"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$16;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->FORMAT_22T:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    .line 341
    new-instance v6, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$17;

    const-string v4, "FORMAT_22S"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$17;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->FORMAT_22S:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    .line 362
    new-instance v4, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$18;

    const-string v2, "FORMAT_22C"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$18;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->FORMAT_22C:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    .line 384
    new-instance v2, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$19;

    const-string v6, "FORMAT_22CS"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$19;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->FORMAT_22CS:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    .line 405
    new-instance v6, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$20;

    const-string v4, "FORMAT_30T"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$20;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->FORMAT_30T:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    .line 424
    new-instance v4, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$21;

    const-string v2, "FORMAT_32X"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$21;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->FORMAT_32X:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    .line 442
    new-instance v2, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$22;

    const-string v6, "FORMAT_31I"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$22;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->FORMAT_31I:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    .line 463
    new-instance v6, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$23;

    const-string v4, "FORMAT_31T"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$23;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->FORMAT_31T:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    .line 497
    new-instance v2, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$24;

    const-string v4, "FORMAT_31C"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$24;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->FORMAT_31C:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    .line 519
    new-instance v4, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$25;

    const-string v6, "FORMAT_35C"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$25;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->FORMAT_35C:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    .line 530
    new-instance v2, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$26;

    const-string v6, "FORMAT_35MS"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$26;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->FORMAT_35MS:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    .line 541
    new-instance v4, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$27;

    const-string v6, "FORMAT_35MI"

    move-object/from16 v28, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v2}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$27;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->FORMAT_35MI:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    .line 552
    new-instance v2, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$28;

    const-string v6, "FORMAT_3RC"

    move-object/from16 v29, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v4}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$28;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->FORMAT_3RC:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    .line 563
    new-instance v4, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$29;

    const-string v6, "FORMAT_3RMS"

    move-object/from16 v30, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v2}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$29;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->FORMAT_3RMS:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    .line 574
    new-instance v2, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$30;

    const-string v6, "FORMAT_3RMI"

    move-object/from16 v31, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v4}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$30;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->FORMAT_3RMI:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    .line 585
    new-instance v4, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$31;

    const-string v6, "FORMAT_51L"

    move-object/from16 v32, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v6, v2}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$31;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->FORMAT_51L:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    .line 608
    new-instance v2, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$32;

    const-string v6, "FORMAT_33X"

    move-object/from16 v33, v4

    const/16 v4, 0x1f

    invoke-direct {v2, v6, v4}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$32;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->FORMAT_33X:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    .line 629
    new-instance v4, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$33;

    const-string v6, "FORMAT_32S"

    move-object/from16 v34, v2

    const/16 v2, 0x20

    invoke-direct {v4, v6, v2}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$33;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->FORMAT_32S:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    .line 650
    new-instance v2, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$34;

    const-string v6, "FORMAT_40SC"

    move-object/from16 v35, v4

    const/16 v4, 0x21

    invoke-direct {v2, v6, v4}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$34;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->FORMAT_40SC:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    .line 671
    new-instance v4, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$35;

    const-string v6, "FORMAT_41C"

    move-object/from16 v36, v2

    const/16 v2, 0x22

    invoke-direct {v4, v6, v2}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$35;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->FORMAT_41C:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    .line 693
    new-instance v2, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$36;

    const-string v6, "FORMAT_52C"

    move-object/from16 v37, v4

    const/16 v4, 0x23

    invoke-direct {v2, v6, v4}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$36;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->FORMAT_52C:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    .line 717
    new-instance v4, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$37;

    const-string v6, "FORMAT_5RC"

    move-object/from16 v38, v2

    const/16 v2, 0x24

    invoke-direct {v4, v6, v2}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$37;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->FORMAT_5RC:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    .line 741
    new-instance v2, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$38;

    const-string v6, "FORMAT_PACKED_SWITCH_PAYLOAD"

    move-object/from16 v39, v4

    const/16 v4, 0x25

    invoke-direct {v2, v6, v4}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$38;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->FORMAT_PACKED_SWITCH_PAYLOAD:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    .line 773
    new-instance v4, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$39;

    const-string v6, "FORMAT_SPARSE_SWITCH_PAYLOAD"

    move-object/from16 v40, v2

    const/16 v2, 0x26

    invoke-direct {v4, v6, v2}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$39;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->FORMAT_SPARSE_SWITCH_PAYLOAD:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    .line 813
    new-instance v2, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$40;

    const-string v6, "FORMAT_FILL_ARRAY_DATA_PAYLOAD"

    move-object/from16 v41, v4

    const/16 v4, 0x27

    invoke-direct {v2, v6, v4}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec$40;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->FORMAT_FILL_ARRAY_DATA_PAYLOAD:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    const/16 v4, 0x28

    new-array v4, v4, [Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    const/16 v0, 0xd

    aput-object v16, v4, v0

    const/16 v0, 0xe

    aput-object v17, v4, v0

    const/16 v0, 0xf

    aput-object v18, v4, v0

    const/16 v0, 0x10

    aput-object v19, v4, v0

    const/16 v0, 0x11

    aput-object v20, v4, v0

    const/16 v0, 0x12

    aput-object v21, v4, v0

    const/16 v0, 0x13

    aput-object v22, v4, v0

    const/16 v0, 0x14

    aput-object v23, v4, v0

    const/16 v0, 0x15

    aput-object v24, v4, v0

    const/16 v0, 0x16

    aput-object v25, v4, v0

    const/16 v0, 0x17

    aput-object v26, v4, v0

    const/16 v0, 0x18

    aput-object v27, v4, v0

    const/16 v0, 0x19

    aput-object v28, v4, v0

    const/16 v0, 0x1a

    aput-object v29, v4, v0

    const/16 v0, 0x1b

    aput-object v30, v4, v0

    const/16 v0, 0x1c

    aput-object v31, v4, v0

    const/16 v0, 0x1d

    aput-object v32, v4, v0

    const/16 v0, 0x1e

    aput-object v33, v4, v0

    const/16 v0, 0x1f

    aput-object v34, v4, v0

    const/16 v0, 0x20

    aput-object v35, v4, v0

    const/16 v0, 0x21

    aput-object v36, v4, v0

    const/16 v0, 0x22

    aput-object v37, v4, v0

    const/16 v0, 0x23

    aput-object v38, v4, v0

    const/16 v0, 0x24

    aput-object v39, v4, v0

    const/16 v0, 0x25

    aput-object v40, v4, v0

    const/16 v0, 0x26

    aput-object v41, v4, v0

    const/16 v0, 0x27

    aput-object v2, v4, v0

    .line 31
    sput-object v4, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->$VALUES:[Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/dexmaker/dx/io/instructions/InstructionCodec$1;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;
    .locals 1

    .line 31
    const-class v0, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    return-object p0
.end method

.method public static values()[Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;
    .locals 1

    .line 31
    sget-object v0, Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->$VALUES:[Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    invoke-virtual {v0}, [Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    return-object v0
.end method
