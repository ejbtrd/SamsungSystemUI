.class public Lcom/android/wm/shell/pip/PipMediaController;
.super Ljava/lang/Object;
.source "PipMediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/pip/PipMediaController$MetadataListener;,
        Lcom/android/wm/shell/pip/PipMediaController$ActionListener;
    }
.end annotation


# instance fields
.field private final mActionListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/pip/PipMediaController$ActionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandlerExecutor:Landroid/os/HandlerExecutor;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mMediaActionReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaController:Landroid/media/session/MediaController;

.field private final mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private final mMetadataListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/pip/PipMediaController$MetadataListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAction:Landroid/app/RemoteAction;

.field private mPauseAction:Landroid/app/RemoteAction;

.field private mPlayAction:Landroid/app/RemoteAction;

.field private final mPlaybackChangedListener:Landroid/media/session/MediaController$Callback;

.field private mPrevAction:Landroid/app/RemoteAction;

.field private final mSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# direct methods
.method public static synthetic $r8$lambda$2i1jZ4Mth6bsRZCNh4R8PJnq07o(Ljava/util/List;Lcom/android/wm/shell/pip/PipMediaController$ActionListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/PipMediaController;->lambda$notifyActionsChanged$0(Ljava/util/List;Lcom/android/wm/shell/pip/PipMediaController$ActionListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YURICBb_FNnFA0BJGPnca_po_DU(Landroid/media/MediaMetadata;Lcom/android/wm/shell/pip/PipMediaController$MetadataListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/PipMediaController;->lambda$notifyMetadataChanged$1(Landroid/media/MediaMetadata;Lcom/android/wm/shell/pip/PipMediaController$MetadataListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dWllbSohWL32v7twy3_3wxZxZ1s(Lcom/android/wm/shell/pip/PipMediaController;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/PipMediaController;->resolveActiveMediaController(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 7

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Lcom/android/wm/shell/pip/PipMediaController$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/PipMediaController$1;-><init>(Lcom/android/wm/shell/pip/PipMediaController;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMediaActionReceiver:Landroid/content/BroadcastReceiver;

    .line 121
    new-instance v1, Lcom/android/wm/shell/pip/PipMediaController$2;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/PipMediaController$2;-><init>(Lcom/android/wm/shell/pip/PipMediaController;)V

    iput-object v1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mPlaybackChangedListener:Landroid/media/session/MediaController$Callback;

    .line 134
    new-instance v1, Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/PipMediaController;)V

    iput-object v1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 137
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mActionListeners:Ljava/util/ArrayList;

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMetadataListeners:Ljava/util/ArrayList;

    .line 141
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mContext:Landroid/content/Context;

    .line 142
    iput-object p2, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMainHandler:Landroid/os/Handler;

    .line 143
    new-instance v1, Landroid/os/HandlerExecutor;

    invoke-direct {v1, p2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    .line 144
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.android.wm.shell.pip.PLAY"

    .line 145
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.android.wm.shell.pip.PAUSE"

    .line 146
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.android.wm.shell.pip.NEXT"

    .line 147
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "com.android.wm.shell.pip.PREV"

    .line 148
    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "com.android.systemui.permission.SELF"

    .line 149
    invoke-virtual {p1, v0, v1, v6, p2}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 153
    sget p2, Lcom/android/wm/shell/R$string;->pip_pause:I

    sget v0, Lcom/android/wm/shell/R$drawable;->pip_ic_pause_white:I

    invoke-direct {p0, p2, v0, v3}, Lcom/android/wm/shell/pip/PipMediaController;->getDefaultRemoteAction(IILjava/lang/String;)Landroid/app/RemoteAction;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/pip/PipMediaController;->mPauseAction:Landroid/app/RemoteAction;

    .line 155
    sget p2, Lcom/android/wm/shell/R$string;->pip_play:I

    sget v0, Lcom/android/wm/shell/R$drawable;->pip_ic_play_arrow_white:I

    invoke-direct {p0, p2, v0, v2}, Lcom/android/wm/shell/pip/PipMediaController;->getDefaultRemoteAction(IILjava/lang/String;)Landroid/app/RemoteAction;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/pip/PipMediaController;->mPlayAction:Landroid/app/RemoteAction;

    .line 157
    sget p2, Lcom/android/wm/shell/R$string;->pip_skip_to_next:I

    sget v0, Lcom/android/wm/shell/R$drawable;->pip_ic_skip_next_white:I

    invoke-direct {p0, p2, v0, v4}, Lcom/android/wm/shell/pip/PipMediaController;->getDefaultRemoteAction(IILjava/lang/String;)Landroid/app/RemoteAction;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/pip/PipMediaController;->mNextAction:Landroid/app/RemoteAction;

    .line 159
    sget p2, Lcom/android/wm/shell/R$string;->pip_skip_to_prev:I

    sget v0, Lcom/android/wm/shell/R$drawable;->pip_ic_skip_previous_white:I

    invoke-direct {p0, p2, v0, v5}, Lcom/android/wm/shell/pip/PipMediaController;->getDefaultRemoteAction(IILjava/lang/String;)Landroid/app/RemoteAction;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/pip/PipMediaController;->mPrevAction:Landroid/app/RemoteAction;

    .line 162
    const-class p2, Landroid/media/session/MediaSessionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/session/MediaSessionManager;

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/wm/shell/pip/PipMediaController;)Landroid/media/session/MediaController;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/wm/shell/pip/PipMediaController;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/wm/shell/pip/PipMediaController;->notifyActionsChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/wm/shell/pip/PipMediaController;Landroid/media/MediaMetadata;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/PipMediaController;->notifyMetadataChanged(Landroid/media/MediaMetadata;)V

    return-void
.end method

.method private getDefaultRemoteAction(IILjava/lang/String;)Landroid/app/RemoteAction;
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 263
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    iget-object p3, p0, Lcom/android/wm/shell/pip/PipMediaController;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    new-instance p3, Landroid/app/RemoteAction;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p2

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0xc000000

    .line 267
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-direct {p3, p2, p1, p1, p0}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-object p3
.end method

.method private getMediaActions()Ljava/util/List;
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 230
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 234
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 236
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->isActive()Z

    move-result v2

    .line 239
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v3

    .line 243
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mPrevAction:Landroid/app/RemoteAction;

    const-wide/16 v5, 0x10

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    const/4 v6, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_2

    move v5, v6

    goto :goto_1

    :cond_2
    move v5, v9

    :goto_1
    invoke-virtual {v0, v5}, Landroid/app/RemoteAction;->setEnabled(Z)V

    .line 244
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mPrevAction:Landroid/app/RemoteAction;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_3

    const-wide/16 v10, 0x4

    and-long/2addr v10, v3

    cmp-long v0, v10, v7

    if-eqz v0, :cond_3

    .line 248
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mPlayAction:Landroid/app/RemoteAction;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    const-wide/16 v10, 0x2

    and-long/2addr v10, v3

    cmp-long v0, v10, v7

    if-eqz v0, :cond_4

    .line 250
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mPauseAction:Landroid/app/RemoteAction;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mNextAction:Landroid/app/RemoteAction;

    const-wide/16 v10, 0x20

    and-long v2, v3, v10

    cmp-long v2, v2, v7

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    move v6, v9

    :goto_3
    invoke-virtual {v0, v6}, Landroid/app/RemoteAction;->setEnabled(Z)V

    .line 255
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mNextAction:Landroid/app/RemoteAction;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method private getMediaMetadata()Landroid/media/MediaMetadata;
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static synthetic lambda$notifyActionsChanged$0(Ljava/util/List;Lcom/android/wm/shell/pip/PipMediaController$ActionListener;)V
    .locals 0

    .line 324
    invoke-interface {p1, p0}, Lcom/android/wm/shell/pip/PipMediaController$ActionListener;->onMediaActionsChanged(Ljava/util/List;)V

    return-void
.end method

.method private static synthetic lambda$notifyMetadataChanged$1(Landroid/media/MediaMetadata;Lcom/android/wm/shell/pip/PipMediaController$MetadataListener;)V
    .locals 0

    .line 333
    invoke-interface {p1, p0}, Lcom/android/wm/shell/pip/PipMediaController$MetadataListener;->onMediaMetadataChanged(Landroid/media/MediaMetadata;)V

    return-void
.end method

.method private notifyActionsChanged()V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mActionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    invoke-direct {p0}, Lcom/android/wm/shell/pip/PipMediaController;->getMediaActions()Ljava/util/List;

    move-result-object v0

    .line 324
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mActionListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private notifyMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMetadataListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMetadataListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda1;-><init>(Landroid/media/MediaMetadata;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private resolveActiveMediaController(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 285
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/wm/shell/pip/PipUtils;->getTopPipActivity(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 287
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 288
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaController;

    .line 289
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 290
    invoke-direct {p0, v2}, Lcom/android/wm/shell/pip/PipMediaController;->setActiveMediaController(Landroid/media/session/MediaController;)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 296
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/PipMediaController;->setActiveMediaController(Landroid/media/session/MediaController;)V

    return-void
.end method

.method private setActiveMediaController(Landroid/media/session/MediaController;)V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    if-eq p1, v0, :cond_2

    if-eqz v0, :cond_0

    .line 305
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mPlaybackChangedListener:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 307
    :cond_0
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz p1, :cond_1

    .line 309
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mPlaybackChangedListener:Landroid/media/session/MediaController$Callback;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    .line 311
    :cond_1
    invoke-direct {p0}, Lcom/android/wm/shell/pip/PipMediaController;->notifyActionsChanged()V

    .line 312
    invoke-direct {p0}, Lcom/android/wm/shell/pip/PipMediaController;->getMediaMetadata()Landroid/media/MediaMetadata;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/PipMediaController;->notifyMetadataChanged(Landroid/media/MediaMetadata;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addActionListener(Lcom/android/wm/shell/pip/PipMediaController$ActionListener;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mActionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mActionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-direct {p0}, Lcom/android/wm/shell/pip/PipMediaController;->getMediaActions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/wm/shell/pip/PipMediaController$ActionListener;->onMediaActionsChanged(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public addMetadataListener(Lcom/android/wm/shell/pip/PipMediaController$MetadataListener;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMetadataListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMetadataListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-direct {p0}, Lcom/android/wm/shell/pip/PipMediaController;->getMediaMetadata()Landroid/media/MediaMetadata;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/wm/shell/pip/PipMediaController$MetadataListener;->onMediaMetadataChanged(Landroid/media/MediaMetadata;)V

    :cond_0
    return-void
.end method

.method public onActivityPinned()V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/wm/shell/pip/PipMediaController;->resolveActiveMediaController(Ljava/util/List;)V

    return-void
.end method

.method public registerSessionListenerForCurrentUser()V
    .locals 4

    .line 275
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    .line 276
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipMediaController;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2, p0}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    return-void
.end method

.method public removeActionListener(Lcom/android/wm/shell/pip/PipMediaController$ActionListener;)V
    .locals 1

    .line 188
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/wm/shell/pip/PipMediaController$ActionListener;->onMediaActionsChanged(Ljava/util/List;)V

    .line 189
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mActionListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
