.class public final Lcom/google/dexmaker/dx/rop/code/AccessFlags;
.super Ljava/lang/Object;
.source "AccessFlags.java"


# direct methods
.method public static classString(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x7631

    const/4 v1, 0x1

    .line 153
    invoke-static {p0, v0, v1}, Lcom/google/dexmaker/dx/rop/code/AccessFlags;->humanHelper(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fieldString(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x50df

    const/4 v1, 0x2

    .line 175
    invoke-static {p0, v0, v1}, Lcom/google/dexmaker/dx/rop/code/AccessFlags;->humanHelper(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static humanHelper(III)Ljava/lang/String;
    .locals 4

    .line 298
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    not-int v1, p1

    and-int/2addr v1, p0

    and-int/2addr p0, p1

    and-int/lit8 p1, p0, 0x1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "|public"

    .line 304
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    and-int/lit8 p1, p0, 0x2

    if-eqz p1, :cond_1

    const-string/jumbo p1, "|private"

    .line 307
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    and-int/lit8 p1, p0, 0x4

    if-eqz p1, :cond_2

    const-string/jumbo p1, "|protected"

    .line 310
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    and-int/lit8 p1, p0, 0x8

    if-eqz p1, :cond_3

    const-string/jumbo p1, "|static"

    .line 313
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    and-int/lit8 p1, p0, 0x10

    if-eqz p1, :cond_4

    const-string/jumbo p1, "|final"

    .line 316
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    and-int/lit8 p1, p0, 0x20

    const/4 v2, 0x1

    if-eqz p1, :cond_6

    if-ne p2, v2, :cond_5

    const-string/jumbo p1, "|super"

    .line 320
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_5
    const-string/jumbo p1, "|synchronized"

    .line 322
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    :goto_0
    and-int/lit8 p1, p0, 0x40

    const/4 v3, 0x3

    if-eqz p1, :cond_8

    if-ne p2, v3, :cond_7

    const-string/jumbo p1, "|bridge"

    .line 327
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_7
    const-string/jumbo p1, "|volatile"

    .line 329
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    :goto_1
    and-int/lit16 p1, p0, 0x80

    if-eqz p1, :cond_a

    if-ne p2, v3, :cond_9

    const-string/jumbo p1, "|varargs"

    .line 334
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_9
    const-string/jumbo p1, "|transient"

    .line 336
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    :goto_2
    and-int/lit16 p1, p0, 0x100

    if-eqz p1, :cond_b

    const-string/jumbo p1, "|native"

    .line 340
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b
    and-int/lit16 p1, p0, 0x200

    if-eqz p1, :cond_c

    const-string/jumbo p1, "|interface"

    .line 343
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    and-int/lit16 p1, p0, 0x400

    if-eqz p1, :cond_d

    const-string/jumbo p1, "|abstract"

    .line 346
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_d
    and-int/lit16 p1, p0, 0x800

    if-eqz p1, :cond_e

    const-string/jumbo p1, "|strictfp"

    .line 349
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_e
    and-int/lit16 p1, p0, 0x1000

    if-eqz p1, :cond_f

    const-string/jumbo p1, "|synthetic"

    .line 352
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_f
    and-int/lit16 p1, p0, 0x2000

    if-eqz p1, :cond_10

    const-string/jumbo p1, "|annotation"

    .line 355
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_10
    and-int/lit16 p1, p0, 0x4000

    if-eqz p1, :cond_11

    const-string/jumbo p1, "|enum"

    .line 358
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_11
    const/high16 p1, 0x10000

    and-int/2addr p1, p0

    if-eqz p1, :cond_12

    const-string/jumbo p1, "|constructor"

    .line 361
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_12
    const/high16 p1, 0x20000

    and-int/2addr p0, p1

    if-eqz p0, :cond_13

    const-string/jumbo p0, "|declared_synchronized"

    .line 364
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_13
    if-nez v1, :cond_14

    .line 367
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-nez p0, :cond_15

    :cond_14
    const/16 p0, 0x7c

    .line 368
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 369
    invoke-static {v1}, Lcom/google/dexmaker/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    :cond_15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static methodString(I)Ljava/lang/String;
    .locals 2

    const v0, 0x31dff

    const/4 v1, 0x3

    .line 186
    invoke-static {p0, v0, v1}, Lcom/google/dexmaker/dx/rop/code/AccessFlags;->humanHelper(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
