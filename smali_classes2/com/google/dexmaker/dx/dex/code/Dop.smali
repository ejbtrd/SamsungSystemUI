.class public final Lcom/google/dexmaker/dx/dex/code/Dop;
.super Ljava/lang/Object;
.source "Dop.java"


# instance fields
.field private final family:I

.field private final format:Lcom/google/dexmaker/dx/dex/code/InsnFormat;

.field private final hasResult:Z

.field private final nextOpcode:I

.field private final opcode:I


# direct methods
.method public constructor <init>(IIILcom/google/dexmaker/dx/dex/code/InsnFormat;Z)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p1}, Lcom/google/dexmaker/dx/io/Opcodes;->isValidShape(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    invoke-static {p2}, Lcom/google/dexmaker/dx/io/Opcodes;->isValidShape(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    invoke-static {p3}, Lcom/google/dexmaker/dx/io/Opcodes;->isValidShape(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "format == null"

    .line 75
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    iput p1, p0, Lcom/google/dexmaker/dx/dex/code/Dop;->opcode:I

    .line 79
    iput p2, p0, Lcom/google/dexmaker/dx/dex/code/Dop;->family:I

    .line 80
    iput p3, p0, Lcom/google/dexmaker/dx/dex/code/Dop;->nextOpcode:I

    .line 81
    iput-object p4, p0, Lcom/google/dexmaker/dx/dex/code/Dop;->format:Lcom/google/dexmaker/dx/dex/code/InsnFormat;

    .line 82
    iput-boolean p5, p0, Lcom/google/dexmaker/dx/dex/code/Dop;->hasResult:Z

    return-void

    .line 71
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bogus nextOpcode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 67
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bogus family"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 63
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bogus opcode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getFamily()I
    .locals 0

    .line 107
    iget p0, p0, Lcom/google/dexmaker/dx/dex/code/Dop;->family:I

    return p0
.end method

.method public getFormat()Lcom/google/dexmaker/dx/dex/code/InsnFormat;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/Dop;->format:Lcom/google/dexmaker/dx/dex/code/InsnFormat;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 134
    iget p0, p0, Lcom/google/dexmaker/dx/dex/code/Dop;->opcode:I

    invoke-static {p0}, Lcom/google/dexmaker/dx/io/OpcodeInfo;->getName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNextOpcode()I
    .locals 0

    .line 146
    iget p0, p0, Lcom/google/dexmaker/dx/dex/code/Dop;->nextOpcode:I

    return p0
.end method

.method public getOpcode()I
    .locals 0

    .line 97
    iget p0, p0, Lcom/google/dexmaker/dx/dex/code/Dop;->opcode:I

    return p0
.end method

.method public getOppositeTest()Lcom/google/dexmaker/dx/dex/code/Dop;
    .locals 3

    .line 156
    iget v0, p0, Lcom/google/dexmaker/dx/dex/code/Dop;->opcode:I

    packed-switch v0, :pswitch_data_0

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bogus opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :pswitch_0
    sget-object p0, Lcom/google/dexmaker/dx/dex/code/Dops;->IF_GTZ:Lcom/google/dexmaker/dx/dex/code/Dop;

    return-object p0

    .line 167
    :pswitch_1
    sget-object p0, Lcom/google/dexmaker/dx/dex/code/Dops;->IF_LEZ:Lcom/google/dexmaker/dx/dex/code/Dop;

    return-object p0

    .line 166
    :pswitch_2
    sget-object p0, Lcom/google/dexmaker/dx/dex/code/Dops;->IF_LTZ:Lcom/google/dexmaker/dx/dex/code/Dop;

    return-object p0

    .line 165
    :pswitch_3
    sget-object p0, Lcom/google/dexmaker/dx/dex/code/Dops;->IF_GEZ:Lcom/google/dexmaker/dx/dex/code/Dop;

    return-object p0

    .line 164
    :pswitch_4
    sget-object p0, Lcom/google/dexmaker/dx/dex/code/Dops;->IF_EQZ:Lcom/google/dexmaker/dx/dex/code/Dop;

    return-object p0

    .line 163
    :pswitch_5
    sget-object p0, Lcom/google/dexmaker/dx/dex/code/Dops;->IF_NEZ:Lcom/google/dexmaker/dx/dex/code/Dop;

    return-object p0

    .line 162
    :pswitch_6
    sget-object p0, Lcom/google/dexmaker/dx/dex/code/Dops;->IF_GT:Lcom/google/dexmaker/dx/dex/code/Dop;

    return-object p0

    .line 161
    :pswitch_7
    sget-object p0, Lcom/google/dexmaker/dx/dex/code/Dops;->IF_LE:Lcom/google/dexmaker/dx/dex/code/Dop;

    return-object p0

    .line 160
    :pswitch_8
    sget-object p0, Lcom/google/dexmaker/dx/dex/code/Dops;->IF_LT:Lcom/google/dexmaker/dx/dex/code/Dop;

    return-object p0

    .line 159
    :pswitch_9
    sget-object p0, Lcom/google/dexmaker/dx/dex/code/Dops;->IF_GE:Lcom/google/dexmaker/dx/dex/code/Dop;

    return-object p0

    .line 158
    :pswitch_a
    sget-object p0, Lcom/google/dexmaker/dx/dex/code/Dops;->IF_EQ:Lcom/google/dexmaker/dx/dex/code/Dop;

    return-object p0

    .line 157
    :pswitch_b
    sget-object p0, Lcom/google/dexmaker/dx/dex/code/Dops;->IF_NE:Lcom/google/dexmaker/dx/dex/code/Dop;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasResult()Z
    .locals 0

    .line 125
    iget-boolean p0, p0, Lcom/google/dexmaker/dx/dex/code/Dop;->hasResult:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 88
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/code/Dop;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
