.class public final Lcom/android/systemui/tracing/nano/SystemUiTraceProto;
.super Lcom/google/protobuf/nano/MessageNano;
.source "SystemUiTraceProto.java"


# instance fields
.field public edgeBackGestureHandler:Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;

.field public wmShell:Lcom/android/wm/shell/nano/WmShellTraceProto;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/tracing/nano/SystemUiTraceProto;->clear()Lcom/android/systemui/tracing/nano/SystemUiTraceProto;

    return-void
.end method


# virtual methods
.method public clear()Lcom/android/systemui/tracing/nano/SystemUiTraceProto;
    .locals 1

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/android/systemui/tracing/nano/SystemUiTraceProto;->edgeBackGestureHandler:Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;

    .line 35
    iput-object v0, p0, Lcom/android/systemui/tracing/nano/SystemUiTraceProto;->wmShell:Lcom/android/wm/shell/nano/WmShellTraceProto;

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .line 54
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 55
    iget-object v1, p0, Lcom/android/systemui/tracing/nano/SystemUiTraceProto;->edgeBackGestureHandler:Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 57
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 59
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/tracing/nano/SystemUiTraceProto;->wmShell:Lcom/android/wm/shell/nano/WmShellTraceProto;

    if-eqz p0, :cond_1

    const/4 v1, 0x2

    .line 61
    invoke-static {v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/android/systemui/tracing/nano/SystemUiTraceProto;->edgeBackGestureHandler:Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 44
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/tracing/nano/SystemUiTraceProto;->wmShell:Lcom/android/wm/shell/nano/WmShellTraceProto;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 47
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 49
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
