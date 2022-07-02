.class public Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;
.super Ljava/lang/Object;
.source "SppByteUtil.java"


# static fields
.field private static final TRACE_DEBUG:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->TRACE_DEBUG:Ljava/lang/Boolean;

    return-void
.end method

.method public static intToBytes(I)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    int-to-byte v1, p0

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    const/4 v1, 0x1

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static makeTlv(I[B)[B
    .locals 1

    .line 366
    invoke-static {p0}, Lcom/samsung/android/bluetooth/SmepTag;->isValidConstantKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 372
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 376
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 378
    array-length p0, p1

    int-to-byte p0, p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 380
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 384
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 388
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
