.class public final Lcom/android/wm/shell/nano/WmShellTraceProto;
.super Lcom/google/protobuf/nano/MessageNano;
.source "WmShellTraceProto.java"


# instance fields
.field public testValue:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 27
    invoke-virtual {p0}, Lcom/android/wm/shell/nano/WmShellTraceProto;->clear()Lcom/android/wm/shell/nano/WmShellTraceProto;

    return-void
.end method


# virtual methods
.method public clear()Lcom/android/wm/shell/nano/WmShellTraceProto;
    .locals 1

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/android/wm/shell/nano/WmShellTraceProto;->testValue:Z

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 2

    .line 47
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 48
    iget-boolean p0, p0, Lcom/android/wm/shell/nano/WmShellTraceProto;->testValue:Z

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    .line 50
    invoke-static {v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-boolean v0, p0, Lcom/android/wm/shell/nano/WmShellTraceProto;->testValue:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 40
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 42
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
