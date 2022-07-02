.class final Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;
.super Landroid/media/session/MediaController$Callback;
.source "MediaTimeoutListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/MediaTimeoutListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PlaybackStateListener"
.end annotation


# instance fields
.field private cancellation:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private destroyed:Z

.field private key:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mediaController:Landroid/media/session/MediaController;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mediaData:Lcom/android/systemui/media/MediaData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private playing:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/media/MediaTimeoutListener;

.field private timedOut:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaTimeoutListener;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V
    .locals 1
    .param p1    # Lcom/android/systemui/media/MediaTimeoutListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/systemui/media/MediaData;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iput-object p1, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/MediaTimeoutListener;

    .line 121
    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    .line 119
    iput-object p2, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    .line 127
    iput-object p3, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->mediaData:Lcom/android/systemui/media/MediaData;

    .line 148
    invoke-virtual {p0, p3}, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->setMediaData(Lcom/android/systemui/media/MediaData;)V

    return-void
.end method

.method public static final synthetic access$setCancellation$p(Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;Ljava/lang/Runnable;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->cancellation:Ljava/lang/Runnable;

    return-void
.end method

.method private final expireMediaTimeout(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->cancellation:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "media timeout cancelled for  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", reason: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaTimeout"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    const/4 p1, 0x0

    .line 215
    iput-object p1, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->cancellation:Ljava/lang/Runnable;

    return-void
.end method

.method private final processState(Landroid/media/session/PlaybackState;Z)V
    .locals 5

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaTimeout"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 175
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlayingState(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 176
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->playing:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->playing:Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    return-void

    .line 179
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->playing:Ljava/lang/Boolean;

    if-nez v2, :cond_3

    .line 183
    iget-object p2, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    const-string/jumbo v0, "schedule timeout for "

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object p2, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->cancellation:Ljava/lang/Runnable;

    if-eqz p2, :cond_2

    const-string p0, "cancellation already exists, continuing."

    .line 186
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 189
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    const-string v0, "PLAYBACK STATE CHANGED - "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->expireMediaTimeout(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object p1, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/MediaTimeoutListener;

    invoke-static {p1}, Lcom/android/systemui/media/MediaTimeoutListener;->access$getMainExecutor$p(Lcom/android/systemui/media/MediaTimeoutListener;)Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener$processState$1;

    iget-object v0, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/MediaTimeoutListener;

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener$processState$1;-><init>(Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;Lcom/android/systemui/media/MediaTimeoutListener;)V

    .line 198
    invoke-static {}, Lcom/android/systemui/media/MediaTimeoutListenerKt;->access$getPAUSED_MEDIA_TIMEOUT$p()J

    move-result-wide v0

    .line 190
    invoke-interface {p1, p2, v0, v1}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->cancellation:Ljava/lang/Runnable;

    goto :goto_1

    .line 200
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playback started - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->expireMediaTimeout(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iput-boolean v0, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->timedOut:Z

    if-eqz p2, :cond_4

    .line 203
    iget-object p1, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/MediaTimeoutListener;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaTimeoutListener;->getTimeoutCallback()Lkotlin/jvm/functions/Function2;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->timedOut:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->mediaController:Landroid/media/session/MediaController;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 153
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->cancellation:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_1
    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->destroyed:Z

    return-void
.end method

.method public final getDestroyed()Z
    .locals 0

    .line 125
    iget-boolean p0, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->destroyed:Z

    return p0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 119
    iget-object p0, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    return-object p0
.end method

.method public final getPlaying()Ljava/lang/Boolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 124
    iget-object p0, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->playing:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getTimedOut()Z
    .locals 0

    .line 123
    iget-boolean p0, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->timedOut:Z

    return p0
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 1
    .param p1    # Landroid/media/session/PlaybackState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 158
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->processState(Landroid/media/session/PlaybackState;Z)V

    return-void
.end method

.method public onSessionDestroyed()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    const-string v1, "Session destroyed for "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaTimeout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->destroy()V

    return-void
.end method

.method public final setKey(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iput-object p1, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    return-void
.end method

.method public final setMediaData(Lcom/android/systemui/media/MediaData;)V
    .locals 3
    .param p1    # Lcom/android/systemui/media/MediaData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->destroyed:Z

    .line 130
    iget-object v1, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->mediaController:Landroid/media/session/MediaController;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 131
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->mediaData:Lcom/android/systemui/media/MediaData;

    .line 132
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getToken()Landroid/media/session/MediaSession$Token;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 133
    iget-object p1, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/MediaTimeoutListener;

    invoke-static {p1}, Lcom/android/systemui/media/MediaTimeoutListener;->access$getMediaControllerFactory$p(Lcom/android/systemui/media/MediaTimeoutListener;)Lcom/android/systemui/media/MediaControllerFactory;

    move-result-object p1

    iget-object v2, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->mediaData:Lcom/android/systemui/media/MediaData;

    invoke-virtual {v2}, Lcom/android/systemui/media/MediaData;->getToken()Landroid/media/session/MediaSession$Token;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/systemui/media/MediaControllerFactory;->create(Landroid/media/session/MediaSession$Token;)Landroid/media/session/MediaController;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v1

    .line 132
    :goto_1
    iput-object p1, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->mediaController:Landroid/media/session/MediaController;

    if-nez p1, :cond_2

    goto :goto_2

    .line 137
    :cond_2
    invoke-virtual {p1, p0}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 140
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->mediaController:Landroid/media/session/MediaController;

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    :goto_3
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->processState(Landroid/media/session/PlaybackState;Z)V

    return-void
.end method

.method public final setTimedOut(Z)V
    .locals 0

    .line 123
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->timedOut:Z

    return-void
.end method
