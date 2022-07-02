.class public Lcom/google/dexmaker/dx/io/OpcodeInfo$Info;
.super Ljava/lang/Object;
.source "OpcodeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/dexmaker/dx/io/OpcodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field private final format:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

.field private final indexType:Lcom/google/dexmaker/dx/io/IndexType;

.field private final name:Ljava/lang/String;

.field private final opcode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;Lcom/google/dexmaker/dx/io/IndexType;)V
    .locals 0

    .line 1437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1438
    iput p1, p0, Lcom/google/dexmaker/dx/io/OpcodeInfo$Info;->opcode:I

    .line 1439
    iput-object p2, p0, Lcom/google/dexmaker/dx/io/OpcodeInfo$Info;->name:Ljava/lang/String;

    .line 1440
    iput-object p3, p0, Lcom/google/dexmaker/dx/io/OpcodeInfo$Info;->format:Lcom/google/dexmaker/dx/io/instructions/InstructionCodec;

    .line 1441
    iput-object p4, p0, Lcom/google/dexmaker/dx/io/OpcodeInfo$Info;->indexType:Lcom/google/dexmaker/dx/io/IndexType;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 1449
    iget-object p0, p0, Lcom/google/dexmaker/dx/io/OpcodeInfo$Info;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOpcode()I
    .locals 0

    .line 1445
    iget p0, p0, Lcom/google/dexmaker/dx/io/OpcodeInfo$Info;->opcode:I

    return p0
.end method
