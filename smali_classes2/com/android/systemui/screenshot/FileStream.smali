.class public Lcom/android/systemui/screenshot/FileStream;
.super Ljava/lang/Object;
.source "FileStream.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field private descriptor:Landroid/os/ParcelFileDescriptor;

.field private stream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p3, "w"

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/FileStream;->descriptor:Landroid/os/ParcelFileDescriptor;

    .line 20
    new-instance p1, Ljava/io/FileOutputStream;

    iget-object p2, p0, Lcom/android/systemui/screenshot/FileStream;->descriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object p1, p0, Lcom/android/systemui/screenshot/FileStream;->stream:Ljava/io/OutputStream;

    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/screenshot/FileStream;->stream:Ljava/io/OutputStream;

    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/android/systemui/screenshot/FileStream;->descriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 39
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/FileStream;->stream:Ljava/io/OutputStream;

    if-eqz p0, :cond_1

    .line 40
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    :cond_1
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-object p0, p0, Lcom/android/systemui/screenshot/FileStream;->stream:Ljava/io/OutputStream;

    if-eqz p0, :cond_0

    .line 47
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    :cond_0
    return-void
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/systemui/screenshot/FileStream;->stream:Ljava/io/OutputStream;

    return-object p0
.end method

.method public getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/systemui/screenshot/FileStream;->descriptor:Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method
