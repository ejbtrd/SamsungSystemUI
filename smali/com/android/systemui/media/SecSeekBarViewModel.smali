.class public final Lcom/android/systemui/media/SecSeekBarViewModel;
.super Ljava/lang/Object;
.source "SecSeekBarViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarChangeListener;,
        Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;,
        Lcom/android/systemui/media/SecSeekBarViewModel$Progress;
    }
.end annotation


# instance fields
.field private _data:Lcom/android/systemui/media/SecSeekBarViewModel$Progress;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _progress:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/android/systemui/media/SecSeekBarViewModel$Progress;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private callback:Lcom/android/systemui/media/SecSeekBarViewModel$callback$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private cancel:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private controller:Landroid/media/session/MediaController;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isFalseSeek:Z

.field private listening:Z

.field private onSeekBarPreesedValue:J

.field private playbackState:Landroid/media/session/PlaybackState;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private scrubbing:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/concurrency/RepeatableExecutor;)V
    .locals 2
    .param p1    # Lcom/android/systemui/util/concurrency/RepeatableExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bgExecutor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    .line 79
    new-instance p1, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v0, v1, v0}, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;-><init>(ZZLjava/lang/Integer;I)V

    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->_data:Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

    .line 84
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->_data:Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 86
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 84
    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->_progress:Landroidx/lifecycle/MutableLiveData;

    .line 98
    new-instance p1, Lcom/android/systemui/media/SecSeekBarViewModel$callback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/SecSeekBarViewModel$callback$1;-><init>(Lcom/android/systemui/media/SecSeekBarViewModel;)V

    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->callback:Lcom/android/systemui/media/SecSeekBarViewModel$callback$1;

    const/4 p1, 0x1

    .line 118
    iput-boolean p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->listening:Z

    return-void
.end method

.method public static final synthetic access$checkIfPollingNeeded(Lcom/android/systemui/media/SecSeekBarViewModel;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/android/systemui/media/SecSeekBarViewModel;->checkIfPollingNeeded()V

    return-void
.end method

.method public static final synthetic access$checkPlaybackPosition(Lcom/android/systemui/media/SecSeekBarViewModel;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/android/systemui/media/SecSeekBarViewModel;->checkPlaybackPosition()V

    return-void
.end method

.method public static final synthetic access$getCancel$p(Lcom/android/systemui/media/SecSeekBarViewModel;)Ljava/lang/Runnable;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->cancel:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getController$p(Lcom/android/systemui/media/SecSeekBarViewModel;)Landroid/media/session/MediaController;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->controller:Landroid/media/session/MediaController;

    return-object p0
.end method

.method public static final synthetic access$getListening$p(Lcom/android/systemui/media/SecSeekBarViewModel;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->listening:Z

    return p0
.end method

.method public static final synthetic access$getPlaybackState$p(Lcom/android/systemui/media/SecSeekBarViewModel;)Landroid/media/session/PlaybackState;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    return-object p0
.end method

.method public static final synthetic access$getScrubbing$p(Lcom/android/systemui/media/SecSeekBarViewModel;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->scrubbing:Z

    return p0
.end method

.method public static final synthetic access$get_data$p(Lcom/android/systemui/media/SecSeekBarViewModel;)Lcom/android/systemui/media/SecSeekBarViewModel$Progress;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->_data:Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

    return-object p0
.end method

.method public static final synthetic access$isFalseSeek$p(Lcom/android/systemui/media/SecSeekBarViewModel;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->isFalseSeek:Z

    return p0
.end method

.method public static final synthetic access$setCancel$p(Lcom/android/systemui/media/SecSeekBarViewModel;Ljava/lang/Runnable;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->cancel:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$setController(Lcom/android/systemui/media/SecSeekBarViewModel;Landroid/media/session/MediaController;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/media/SecSeekBarViewModel;->setController(Landroid/media/session/MediaController;)V

    return-void
.end method

.method public static final synthetic access$setFalseSeek$p(Lcom/android/systemui/media/SecSeekBarViewModel;Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->isFalseSeek:Z

    return-void
.end method

.method public static final synthetic access$setListening$p(Lcom/android/systemui/media/SecSeekBarViewModel;Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->listening:Z

    return-void
.end method

.method public static final synthetic access$setPlaybackState$p(Lcom/android/systemui/media/SecSeekBarViewModel;Landroid/media/session/PlaybackState;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    return-void
.end method

.method public static final synthetic access$setScrubbing(Lcom/android/systemui/media/SecSeekBarViewModel;Z)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/media/SecSeekBarViewModel;->setScrubbing(Z)V

    return-void
.end method

.method public static final synthetic access$set_data(Lcom/android/systemui/media/SecSeekBarViewModel;Lcom/android/systemui/media/SecSeekBarViewModel$Progress;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/media/SecSeekBarViewModel;->set_data(Lcom/android/systemui/media/SecSeekBarViewModel$Progress;)V

    return-void
.end method

.method private final checkIfPollingNeeded()V
    .locals 7

    .line 251
    iget-boolean v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->listening:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->scrubbing:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/android/systemui/media/SecSeekBarViewModelKt;->access$isInMotion(Landroid/media/session/PlaybackState;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    .line 253
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->cancel:Ljava/lang/Runnable;

    if-nez v0, :cond_4

    .line 254
    iget-object v1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    new-instance v2, Lcom/android/systemui/media/SecSeekBarViewModel$checkIfPollingNeeded$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/media/SecSeekBarViewModel$checkIfPollingNeeded$1;-><init>(Lcom/android/systemui/media/SecSeekBarViewModel;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x64

    invoke-interface/range {v1 .. v6}, Lcom/android/systemui/util/concurrency/RepeatableExecutor;->executeRepeatedly(Ljava/lang/Runnable;JJ)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->cancel:Ljava/lang/Runnable;

    goto :goto_2

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->cancel:Ljava/lang/Runnable;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_1
    const/4 v0, 0x0

    .line 259
    iput-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->cancel:Ljava/lang/Runnable;

    :cond_4
    :goto_2
    return-void
.end method

.method private final checkPlaybackPosition()V
    .locals 12

    .line 237
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->_data:Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->getDuration()I

    move-result v0

    .line 238
    iget-object v1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/android/systemui/media/SecSeekBarViewModelKt;->access$computePosition(Landroid/media/session/PlaybackState;J)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    move-object v4, v0

    if-eqz v4, :cond_2

    .line 239
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->_data:Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->getElapsedTime()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 240
    iget-wide v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->onSeekBarPreesedValue:J

    long-to-int v2, v0

    if-eqz v2, :cond_1

    .line 241
    iget-object v5, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->_data:Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

    const/4 v6, 0x0

    const/4 v7, 0x0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, 0xb

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->copy$default(Lcom/android/systemui/media/SecSeekBarViewModel$Progress;ZZLjava/lang/Integer;IILjava/lang/Object;)Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/media/SecSeekBarViewModel;->set_data(Lcom/android/systemui/media/SecSeekBarViewModel$Progress;)V

    const-wide/16 v0, 0x0

    .line 242
    iput-wide v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->onSeekBarPreesedValue:J

    goto :goto_1

    .line 244
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->_data:Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xb

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->copy$default(Lcom/android/systemui/media/SecSeekBarViewModel$Progress;ZZLjava/lang/Integer;IILjava/lang/Object;)Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/media/SecSeekBarViewModel;->set_data(Lcom/android/systemui/media/SecSeekBarViewModel$Progress;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private final setController(Landroid/media/session/MediaController;)V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->controller:Landroid/media/session/MediaController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    :goto_1
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 92
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->controller:Landroid/media/session/MediaController;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->callback:Lcom/android/systemui/media/SecSeekBarViewModel$callback$1;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    :goto_2
    if-nez p1, :cond_3

    goto :goto_3

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->callback:Lcom/android/systemui/media/SecSeekBarViewModel$callback$1;

    invoke-virtual {p1, v0}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 94
    :goto_3
    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->controller:Landroid/media/session/MediaController;

    :cond_4
    return-void
.end method

.method private final setScrubbing(Z)V
    .locals 1

    .line 129
    iget-boolean v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->scrubbing:Z

    if-eq v0, p1, :cond_0

    .line 130
    iput-boolean p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->scrubbing:Z

    .line 131
    invoke-direct {p0}, Lcom/android/systemui/media/SecSeekBarViewModel;->checkIfPollingNeeded()V

    :cond_0
    return-void
.end method

.method private final set_data(Lcom/android/systemui/media/SecSeekBarViewModel$Progress;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->_data:Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

    .line 82
    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->_progress:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final attachTouchHandlers(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 1
    .param p1    # Landroidx/appcompat/widget/SeslSeekBar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lcom/android/systemui/media/SecSeekBarViewModel;->getSeekBarListener()Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;)V

    .line 272
    new-instance v0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;-><init>(Lcom/android/systemui/media/SecSeekBarViewModel;Landroidx/appcompat/widget/SeslSeekBar;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final clearController()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    new-instance v1, Lcom/android/systemui/media/SecSeekBarViewModel$clearController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/SecSeekBarViewModel$clearController$1;-><init>(Lcom/android/systemui/media/SecSeekBarViewModel;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getProgress()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/android/systemui/media/SecSeekBarViewModel$Progress;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 88
    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->_progress:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getSeekBarListener()Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 266
    new-instance v0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarChangeListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarChangeListener;-><init>(Lcom/android/systemui/media/SecSeekBarViewModel;)V

    return-object v0
.end method

.method public final onDestroy()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    new-instance v1, Lcom/android/systemui/media/SecSeekBarViewModel$onDestroy$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/SecSeekBarViewModel$onDestroy$1;-><init>(Lcom/android/systemui/media/SecSeekBarViewModel;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onSeek(J)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    new-instance v1, Lcom/android/systemui/media/SecSeekBarViewModel$onSeek$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/media/SecSeekBarViewModel$onSeek$1;-><init>(Lcom/android/systemui/media/SecSeekBarViewModel;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onSeekFalse()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    new-instance v1, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekFalse$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekFalse$1;-><init>(Lcom/android/systemui/media/SecSeekBarViewModel;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onSeekProgress(J)V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    new-instance v1, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekProgress$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekProgress$1;-><init>(Lcom/android/systemui/media/SecSeekBarViewModel;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onSeekStarting()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    new-instance v1, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekStarting$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekStarting$1;-><init>(Lcom/android/systemui/media/SecSeekBarViewModel;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setListening(Z)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    new-instance v1, Lcom/android/systemui/media/SecSeekBarViewModel$listening$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/media/SecSeekBarViewModel$listening$1;-><init>(Lcom/android/systemui/media/SecSeekBarViewModel;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setOnSeekBarPreesedValue(J)V
    .locals 0

    .line 138
    iput-wide p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->onSeekBarPreesedValue:J

    return-void
.end method

.method public final updateController(Landroid/media/session/MediaController;)V
    .locals 8
    .param p1    # Landroid/media/session/MediaController;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 197
    invoke-direct {p0, p1}, Lcom/android/systemui/media/SecSeekBarViewModel;->setController(Landroid/media/session/MediaController;)V

    .line 198
    iget-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->controller:Landroid/media/session/MediaController;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    .line 199
    iget-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->controller:Landroid/media/session/MediaController;

    if-nez p1, :cond_1

    move-object p1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p1

    .line 200
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_2

    move-wide v4, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v4

    :goto_2
    const-wide/16 v6, 0x100

    and-long/2addr v4, v6

    cmp-long v1, v4, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    move v1, v3

    .line 201
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    if-nez v4, :cond_4

    move-object v4, v0

    goto :goto_4

    :cond_4
    invoke-virtual {v4}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_4
    if-nez p1, :cond_5

    move-object p1, v0

    goto :goto_5

    :cond_5
    const-string v5, "android.media.metadata.DURATION"

    .line 202
    invoke-virtual {p1, v5}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_5
    if-nez p1, :cond_6

    move p1, v3

    goto :goto_6

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    long-to-int p1, v5

    .line 203
    :goto_6
    iget-object v5, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    if-eqz v5, :cond_9

    if-nez v5, :cond_7

    goto :goto_7

    .line 204
    :cond_7
    invoke-virtual {v5}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_7
    if-nez v0, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    if-gtz p1, :cond_a

    :cond_9
    move v2, v3

    .line 206
    :cond_a
    new-instance v0, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

    invoke-direct {v0, v2, v1, v4, p1}, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;-><init>(ZZLjava/lang/Integer;I)V

    invoke-direct {p0, v0}, Lcom/android/systemui/media/SecSeekBarViewModel;->set_data(Lcom/android/systemui/media/SecSeekBarViewModel$Progress;)V

    .line 207
    invoke-direct {p0}, Lcom/android/systemui/media/SecSeekBarViewModel;->checkIfPollingNeeded()V

    return-void
.end method
