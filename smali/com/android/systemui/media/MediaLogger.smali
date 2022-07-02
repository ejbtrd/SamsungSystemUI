.class public final Lcom/android/systemui/media/MediaLogger;
.super Ljava/lang/Object;
.source "MediaLogger.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaLogger.kt\ncom/android/systemui/media/MediaLogger\n+ 2 LogBuffer.kt\ncom/android/systemui/log/LogBuffer\n*L\n1#1,144:1\n142#1:145\n143#1:152\n142#1:153\n143#1:160\n142#1:161\n143#1:168\n142#1:169\n143#1:176\n142#1:177\n143#1:184\n142#1:185\n143#1:192\n142#1:193\n143#1:200\n142#1:201\n143#1:208\n142#1:209\n143#1:216\n142#1:217\n143#1:224\n114#2,6:146\n114#2,6:154\n114#2,6:162\n114#2,6:170\n114#2,6:178\n114#2,6:186\n114#2,6:194\n114#2,6:202\n114#2,6:210\n114#2,6:218\n114#2,6:225\n*E\n*S KotlinDebug\n*F\n+ 1 MediaLogger.kt\ncom/android/systemui/media/MediaLogger\n*L\n36#1:145\n36#1:152\n49#1:153\n49#1:160\n59#1:161\n59#1:168\n70#1:169\n70#1:176\n80#1:177\n80#1:184\n89#1:185\n89#1:192\n98#1:193\n98#1:200\n107#1:201\n107#1:208\n117#1:209\n117#1:216\n128#1:217\n128#1:224\n36#1,6:146\n49#1,6:154\n59#1,6:162\n70#1,6:170\n80#1,6:178\n89#1,6:186\n98#1,6:194\n107#1,6:202\n117#1,6:210\n128#1,6:218\n142#1,6:225\n*E\n"
.end annotation


# instance fields
.field private final buffer:Lcom/android/systemui/log/LogBuffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 1
    .param p1    # Lcom/android/systemui/log/LogBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/systemui/media/MediaLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    return-void
.end method

.method public static final synthetic access$getBuffer$p(Lcom/android/systemui/media/MediaLogger;)Lcom/android/systemui/log/LogBuffer;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/systemui/media/MediaLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    return-object p0
.end method


# virtual methods
.method public final logActionClick(Ljava/lang/String;ILjava/lang/CharSequence;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 59
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 64
    sget-object v1, Lcom/android/systemui/media/MediaLogger$logActionClick$2;->INSTANCE:Lcom/android/systemui/media/MediaLogger$logActionClick$2;

    .line 142
    invoke-static {p0}, Lcom/android/systemui/media/MediaLogger;->access$getBuffer$p(Lcom/android/systemui/media/MediaLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "MediaLogger"

    .line 115
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    const-string v1, "null"

    if-nez p1, :cond_0

    move-object p1, v1

    .line 60
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 61
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    if-nez p3, :cond_1

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p1

    :goto_0
    invoke-interface {v0, v1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_3
    return-void
.end method

.method public final logAddPlayer(Ljava/lang/String;Z)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 107
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 111
    sget-object v1, Lcom/android/systemui/media/MediaLogger$logAddPlayer$2;->INSTANCE:Lcom/android/systemui/media/MediaLogger$logAddPlayer$2;

    .line 142
    invoke-static {p0}, Lcom/android/systemui/media/MediaLogger;->access$getBuffer$p(Lcom/android/systemui/media/MediaLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "MediaLogger"

    .line 115
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, "null"

    .line 108
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 109
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_1
    return-void
.end method

.method public final logConfigChanged(Ljava/lang/Integer;)V
    .locals 3
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 80
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 83
    sget-object v1, Lcom/android/systemui/media/MediaLogger$logConfigChanged$2;->INSTANCE:Lcom/android/systemui/media/MediaLogger$logConfigChanged$2;

    .line 142
    invoke-static {p0}, Lcom/android/systemui/media/MediaLogger;->access$getBuffer$p(Lcom/android/systemui/media/MediaLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "MediaLogger"

    .line 115
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_1
    return-void
.end method

.method public final logMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;ZLjava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 36
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 42
    new-instance v1, Lcom/android/systemui/media/MediaLogger$logMediaDataLoaded$2;

    invoke-direct {v1, p5}, Lcom/android/systemui/media/MediaLogger$logMediaDataLoaded$2;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-static {p0}, Lcom/android/systemui/media/MediaLogger;->access$getBuffer$p(Lcom/android/systemui/media/MediaLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result p5

    if-nez p5, :cond_4

    const-string p5, "MediaLogger"

    .line 115
    invoke-virtual {p0, p5, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object p5

    const-string v0, "null"

    if-nez p1, :cond_0

    move-object p1, v0

    .line 37
    :cond_0
    invoke-interface {p5, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    if-nez p2, :cond_1

    move-object p2, v0

    .line 38
    :cond_1
    invoke-interface {p5, p2}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    if-nez p3, :cond_2

    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, p1

    :goto_0
    invoke-interface {p5, v0}, Lcom/android/systemui/log/LogMessage;->setStr3(Ljava/lang/String;)V

    .line 40
    invoke-interface {p5, p4}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 117
    invoke-virtual {p0, p5}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_4
    return-void
.end method

.method public final logRemoveClick(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 70
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 73
    sget-object v1, Lcom/android/systemui/media/MediaLogger$logRemoveClick$2;->INSTANCE:Lcom/android/systemui/media/MediaLogger$logRemoveClick$2;

    .line 142
    invoke-static {p0}, Lcom/android/systemui/media/MediaLogger;->access$getBuffer$p(Lcom/android/systemui/media/MediaLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "MediaLogger"

    .line 115
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, "null"

    .line 71
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_1
    return-void
.end method

.method public final logRemovePlayer(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 89
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 92
    sget-object v1, Lcom/android/systemui/media/MediaLogger$logRemovePlayer$2;->INSTANCE:Lcom/android/systemui/media/MediaLogger$logRemovePlayer$2;

    .line 142
    invoke-static {p0}, Lcom/android/systemui/media/MediaLogger;->access$getBuffer$p(Lcom/android/systemui/media/MediaLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "MediaLogger"

    .line 115
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, "null"

    .line 90
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_1
    return-void
.end method

.method public final logRemovePlayerError(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 98
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 101
    sget-object v1, Lcom/android/systemui/media/MediaLogger$logRemovePlayerError$2;->INSTANCE:Lcom/android/systemui/media/MediaLogger$logRemovePlayerError$2;

    .line 142
    invoke-static {p0}, Lcom/android/systemui/media/MediaLogger;->access$getBuffer$p(Lcom/android/systemui/media/MediaLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "MediaLogger"

    .line 115
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, "null"

    .line 99
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_1
    return-void
.end method

.method public final logSupportMediaOutputRemoteViews(ZZ)V
    .locals 3

    .line 128
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 132
    sget-object v1, Lcom/android/systemui/media/MediaLogger$logSupportMediaOutputRemoteViews$2;->INSTANCE:Lcom/android/systemui/media/MediaLogger$logSupportMediaOutputRemoteViews$2;

    .line 142
    invoke-static {p0}, Lcom/android/systemui/media/MediaLogger;->access$getBuffer$p(Lcom/android/systemui/media/MediaLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "MediaLogger"

    .line 115
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 129
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 130
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logUpdatePlayer(Ljava/lang/String;Z)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 117
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 121
    sget-object v1, Lcom/android/systemui/media/MediaLogger$logUpdatePlayer$2;->INSTANCE:Lcom/android/systemui/media/MediaLogger$logUpdatePlayer$2;

    .line 142
    invoke-static {p0}, Lcom/android/systemui/media/MediaLogger;->access$getBuffer$p(Lcom/android/systemui/media/MediaLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "MediaLogger"

    .line 115
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, "null"

    .line 118
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 119
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_1
    return-void
.end method
