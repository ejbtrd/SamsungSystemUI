.class public final Lcom/android/systemui/log/LogBufferFactory;
.super Ljava/lang/Object;
.source "LogBufferFactory.kt"


# instance fields
.field private final dumpManager:Lcom/android/systemui/dump/DumpManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final logcatEchoTracker:Lcom/android/systemui/log/LogcatEchoTracker;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/log/LogcatEchoTracker;)V
    .locals 1
    .param p1    # Lcom/android/systemui/dump/DumpManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/log/LogcatEchoTracker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dumpManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logcatEchoTracker"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/systemui/log/LogBufferFactory;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 26
    iput-object p2, p0, Lcom/android/systemui/log/LogBufferFactory;->logcatEchoTracker:Lcom/android/systemui/log/LogcatEchoTracker;

    return-void
.end method

.method public static synthetic create$default(Lcom/android/systemui/log/LogBufferFactory;Ljava/lang/String;IIILjava/lang/Object;)Lcom/android/systemui/log/LogBuffer;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/16 p3, 0xa

    .line 29
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/log/LogBufferFactory;->create(Ljava/lang/String;II)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/String;I)Lcom/android/systemui/log/LogBuffer;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/log/LogBufferFactory;->create$default(Lcom/android/systemui/log/LogBufferFactory;Ljava/lang/String;IIILjava/lang/Object;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    return-object p0
.end method

.method public final create(Ljava/lang/String;II)Lcom/android/systemui/log/LogBuffer;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/android/systemui/log/LogBuffer;

    iget-object v1, p0, Lcom/android/systemui/log/LogBufferFactory;->logcatEchoTracker:Lcom/android/systemui/log/LogcatEchoTracker;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/systemui/log/LogBuffer;-><init>(Ljava/lang/String;IILcom/android/systemui/log/LogcatEchoTracker;)V

    .line 31
    iget-object p0, p0, Lcom/android/systemui/log/LogBufferFactory;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/dump/DumpManager;->registerBuffer(Ljava/lang/String;Lcom/android/systemui/log/LogBuffer;)V

    return-object v0
.end method
