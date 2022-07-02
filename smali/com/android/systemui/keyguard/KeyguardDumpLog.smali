.class public final Lcom/android/systemui/keyguard/KeyguardDumpLog;
.super Ljava/lang/Object;
.source "KeyguardDumpLog.kt"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/keyguard/KeyguardDumpLog;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final STATE_MSG:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static logger:Lcom/android/systemui/log/SamsungServiceLogger;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardDumpLog;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/KeyguardDumpLog;-><init>()V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardDumpLog;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardDumpLog;

    const-string v0, "keyguardGoingAway"

    const-string/jumbo v1, "setLockScreenShown"

    const-string v2, "externalEnabled"

    const-string/jumbo v3, "screen_toggled"

    const-string v4, "occluded"

    .line 22
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 17
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardDumpLog;->STATE_MSG:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final log(II)V
    .locals 9

    .line 51
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardDumpLog;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardDumpLog;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x2e

    const/4 v8, 0x0

    move v1, p0

    move v5, p1

    invoke-static/range {v0 .. v8}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->state$default(Lcom/android/systemui/keyguard/KeyguardDumpLog;IZZZIIILjava/lang/Object;)V

    return-void
.end method

.method public static final log(III)V
    .locals 9

    .line 56
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardDumpLog;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardDumpLog;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move v1, p0

    move v5, p1

    move v6, p2

    invoke-static/range {v0 .. v8}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->state$default(Lcom/android/systemui/keyguard/KeyguardDumpLog;IZZZIIILjava/lang/Object;)V

    return-void
.end method

.method public static final log(IZ)V
    .locals 9

    .line 61
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardDumpLog;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardDumpLog;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3c

    const/4 v8, 0x0

    move v1, p0

    move v2, p1

    invoke-static/range {v0 .. v8}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->state$default(Lcom/android/systemui/keyguard/KeyguardDumpLog;IZZZIIILjava/lang/Object;)V

    return-void
.end method

.method public static final log(IZZZ)V
    .locals 9

    .line 66
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardDumpLog;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardDumpLog;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x30

    const/4 v8, 0x0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v8}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->state$default(Lcom/android/systemui/keyguard/KeyguardDumpLog;IZZZIIILjava/lang/Object;)V

    return-void
.end method

.method public static final log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/android/systemui/log/LogLevel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "level"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 41
    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/android/systemui/log/LogLevel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string/jumbo v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "level"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paramMsg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 36
    :cond_0
    sget-object p3, Lcom/android/systemui/keyguard/KeyguardDumpLog;->logger:Lcom/android/systemui/log/SamsungServiceLogger;

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "|"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0, p1, p2}, Lcom/android/systemui/log/SamsungServiceLogger;->logWithThreadId(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static final setLogger(Lcom/android/systemui/log/SamsungServiceLogger;)V
    .locals 1
    .param p0    # Lcom/android/systemui/log/SamsungServiceLogger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "paramLogger"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sput-object p0, Lcom/android/systemui/keyguard/KeyguardDumpLog;->logger:Lcom/android/systemui/log/SamsungServiceLogger;

    return-void
.end method

.method public static synthetic state$default(Lcom/android/systemui/keyguard/KeyguardDumpLog;IZZZIIILjava/lang/Object;)V
    .locals 6

    and-int/lit8 v0, p7, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    and-int/lit8 v2, p7, 0x4

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, p3

    :goto_1
    and-int/lit8 v3, p7, 0x8

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, p4

    :goto_2
    and-int/lit8 v3, p7, 0x10

    const/4 v4, -0x1

    if-eqz v3, :cond_3

    move v3, v4

    goto :goto_3

    :cond_3
    move v3, p5

    :goto_3
    and-int/lit8 v5, p7, 0x20

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move v4, p6

    :goto_4
    move-object p2, p0

    move p3, p1

    move p4, v0

    move p5, v2

    move p6, v1

    move p7, v3

    move p8, v4

    .line 69
    invoke-virtual/range {p2 .. p8}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->state(IZZZII)V

    return-void
.end method


# virtual methods
.method public final state(IZZZII)V
    .locals 1

    const-string p0, " "

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 p3, 0x2

    if-eq p1, p3, :cond_2

    const/4 p3, 0x3

    if-eq p1, p3, :cond_0

    const/4 p3, 0x4

    if-eq p1, p3, :cond_2

    goto :goto_1

    .line 90
    :cond_0
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p5, :cond_1

    if-ne p5, v0, :cond_6

    .line 92
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " why:"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 86
    :cond_2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 79
    :cond_3
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x20

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p2, :cond_6

    const-string p2, " failed"

    .line 81
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    .line 75
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_0

    :cond_5
    const-string p2, "failed"

    :goto_0
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 97
    :cond_6
    :goto_1
    sget-object p2, Lcom/android/systemui/keyguard/KeyguardDumpLog;->logger:Lcom/android/systemui/log/SamsungServiceLogger;

    if-nez p2, :cond_7

    goto :goto_2

    :cond_7
    sget-object p3, Lcom/android/systemui/keyguard/KeyguardDumpLog;->STATE_MSG:[Ljava/lang/String;

    aget-object p1, p3, p1

    sget-object p3, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    invoke-interface {p2, p1, p3, p0}, Lcom/android/systemui/log/SamsungServiceLogger;->logWithThreadId(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
