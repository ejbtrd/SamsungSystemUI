.class public final Lcom/android/systemui/log/SamsungServiceLoggerImpl;
.super Ljava/lang/Object;
.source "SamsungServiceLoggerImpl.kt"

# interfaces
.implements Lcom/android/systemui/log/SamsungServiceLogger;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSamsungServiceLoggerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SamsungServiceLoggerImpl.kt\ncom/android/systemui/log/SamsungServiceLoggerImpl\n+ 2 LogBuffer.kt\ncom/android/systemui/log/LogBuffer\n*L\n1#1,40:1\n114#2,6:41\n114#2,6:47\n114#2,6:53\n*E\n*S KotlinDebug\n*F\n+ 1 SamsungServiceLoggerImpl.kt\ncom/android/systemui/log/SamsungServiceLoggerImpl\n*L\n26#1,6:41\n30#1,6:47\n34#1,6:53\n*E\n"
.end annotation


# instance fields
.field private buffer:Lcom/android/systemui/log/SamsungServiceLogBuffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;IILcom/android/systemui/dump/DumpManager;Lcom/android/systemui/log/LogcatEchoTracker;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/dump/DumpManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/log/LogcatEchoTracker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dumpManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bufferFilter"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SamsungServiceLoggerImpl"

    .line 17
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    new-instance v0, Lcom/android/systemui/log/SamsungServiceLogBuffer;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/android/systemui/log/SamsungServiceLogBuffer;-><init>(Ljava/lang/String;IILcom/android/systemui/log/LogcatEchoTracker;)V

    iput-object v0, p0, Lcom/android/systemui/log/SamsungServiceLoggerImpl;->buffer:Lcom/android/systemui/log/SamsungServiceLogBuffer;

    .line 22
    invoke-virtual {p4, p1, v0}, Lcom/android/systemui/dump/DumpManager;->registerBuffer(Ljava/lang/String;Lcom/android/systemui/log/LogBuffer;)V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/log/LogLevel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "level"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object p0, p0, Lcom/android/systemui/log/SamsungServiceLoggerImpl;->buffer:Lcom/android/systemui/log/SamsungServiceLogBuffer;

    new-instance v0, Lcom/android/systemui/log/SamsungServiceLoggerImpl$log$4;

    invoke-direct {v0, p3}, Lcom/android/systemui/log/SamsungServiceLoggerImpl$log$4;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result p3

    if-nez p3, :cond_0

    .line 115
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object p1

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public logWithThreadId(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/log/LogLevel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "level"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object p0, p0, Lcom/android/systemui/log/SamsungServiceLoggerImpl;->buffer:Lcom/android/systemui/log/SamsungServiceLogBuffer;

    .line 37
    new-instance v0, Lcom/android/systemui/log/SamsungServiceLoggerImpl$logWithThreadId$2;

    invoke-direct {v0, p3}, Lcom/android/systemui/log/SamsungServiceLoggerImpl$logWithThreadId$2;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result p3

    if-nez p3, :cond_0

    .line 115
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object p1

    const/4 p2, 0x1

    .line 35
    invoke-interface {p1, p2}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 36
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getId()J

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Lcom/android/systemui/log/LogMessage;->setLong1(J)V

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method
