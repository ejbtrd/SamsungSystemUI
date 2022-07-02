.class Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;
.super Ljava/lang/Object;
.source "SizeCompatUILayout.java"


# instance fields
.field mButton:Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mButtonSize:I

.field final mButtonWindowManager:Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mCallback:Lcom/android/wm/shell/sizecompatui/SizeCompatUIController$SizeCompatUICallback;

.field private mContext:Landroid/content/Context;

.field private final mDisplayId:I

.field private mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

.field mHint:Lcom/android/wm/shell/sizecompatui/SizeCompatHintPopup;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mHintWindowManager:Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mPopupOffsetX:I

.field final mPopupOffsetY:I

.field mShouldShowHint:Z

.field private final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field private mTaskConfig:Landroid/content/res/Configuration;

.field private final mTaskId:I

.field private final mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private mTaskListener:Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;


# direct methods
.method public static synthetic $r8$lambda$82L5QyXg6tEDJRkVahFUcZxpBzw(Landroid/view/SurfaceControl;IILandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->lambda$updateSurfacePosition$0(Landroid/view/SurfaceControl;IILandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method constructor <init>(Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/sizecompatui/SizeCompatUIController$SizeCompatUICallback;Landroid/content/Context;Landroid/content/res/Configuration;ILcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Z)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 88
    iput-object p2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mCallback:Lcom/android/wm/shell/sizecompatui/SizeCompatUIController$SizeCompatUICallback;

    .line 89
    invoke-virtual {p3, p4}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mContext:Landroid/content/Context;

    .line 90
    iput-object p4, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mTaskConfig:Landroid/content/res/Configuration;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mDisplayId:I

    .line 92
    iput p5, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mTaskId:I

    .line 93
    iput-object p6, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mTaskListener:Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    .line 94
    iput-object p7, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    xor-int/lit8 p1, p8, 0x1

    .line 95
    iput-boolean p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mShouldShowHint:Z

    .line 96
    new-instance p1, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;

    iget-object p2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p4, p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;)V

    iput-object p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButtonWindowManager:Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;

    .line 98
    iget-object p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mContext:Landroid/content/Context;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$dimen;->size_compat_button_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButtonSize:I

    .line 100
    div-int/lit8 p2, p1, 0x4

    iput p2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mPopupOffsetX:I

    .line 101
    iput p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mPopupOffsetY:I

    const/4 p1, 0x0

    .line 108
    iput-object p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method

.method private createSizeCompatHint()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mHint:Lcom/android/wm/shell/sizecompatui/SizeCompatHintPopup;

    if-eqz v0, :cond_0

    return-void

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->createHintWindowManager()Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mHintWindowManager:Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;

    .line 154
    invoke-virtual {v0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->createSizeCompatHint()Lcom/android/wm/shell/sizecompatui/SizeCompatHintPopup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mHint:Lcom/android/wm/shell/sizecompatui/SizeCompatHintPopup;

    .line 155
    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->updateHintSurfacePosition()V

    return-void
.end method

.method private getLayoutDirection()I
    .locals 0

    .line 362
    iget-object p0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$updateSurfacePosition$0(Landroid/view/SurfaceControl;IILandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    int-to-float p1, p1

    int-to-float p2, p2

    .line 346
    invoke-virtual {p3, p0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    const p1, 0x7fffffff

    .line 349
    invoke-virtual {p3, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private updateSurfacePosition(Landroid/view/SurfaceControl;II)V
    .locals 1

    .line 345
    iget-object p0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceControl;II)V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method


# virtual methods
.method attachToParentSurface(Landroid/view/SurfaceControl$Builder;)V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mTaskListener:Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    iget p0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mTaskId:I

    invoke-interface {v0, p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->attachChildSurfaceToTask(ILandroid/view/SurfaceControl$Builder;)V

    return-void
.end method

.method createHintWindowManager()Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 160
    new-instance v0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;

    iget-object v1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mTaskConfig:Landroid/content/res/Configuration;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;)V

    return-object v0
.end method

.method createSizeCompatButton(Z)V
    .locals 1

    if-nez p1, :cond_1

    .line 115
    iget-object p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButton:Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 132
    iput-boolean p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mShouldShowHint:Z

    .line 138
    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->updateButtonSurfacePosition()V

    .line 140
    iget-boolean v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mShouldShowHint:Z

    if-eqz v0, :cond_1

    .line 142
    iput-boolean p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mShouldShowHint:Z

    .line 143
    invoke-direct {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->createSizeCompatHint()V

    :cond_1
    :goto_0
    return-void
.end method

.method dismissHint()V
    .locals 2

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mHint:Lcom/android/wm/shell/sizecompatui/SizeCompatHintPopup;

    .line 166
    iget-object v1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mHintWindowManager:Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;

    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {v1}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->release()V

    .line 168
    iput-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mHintWindowManager:Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;

    :cond_0
    return-void
.end method

.method getDisplayId()I
    .locals 0

    .line 354
    iget p0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mDisplayId:I

    return p0
.end method

.method getHintWindowLayoutParams(Lcom/android/wm/shell/sizecompatui/SizeCompatHintPopup;)Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 271
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    .line 273
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    const/16 v3, 0x7f6

    const/16 v4, 0x28

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 277
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 278
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lcom/android/wm/shell/sizecompatui/SizeCompatHintPopup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->getTaskId()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 279
    iget p0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const p1, 0x20000040

    or-int/2addr p0, p1

    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const p0, 0x1030056

    .line 280
    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return-object v6
.end method

.method getTaskId()I
    .locals 0

    .line 358
    iget p0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mTaskId:I

    return p0
.end method

.method onRestartButtonClicked()V
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mCallback:Lcom/android/wm/shell/sizecompatui/SizeCompatUIController$SizeCompatUICallback;

    iget p0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mTaskId:I

    invoke-interface {v0, p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController$SizeCompatUICallback;->onSizeCompatRestartButtonClicked(I)V

    return-void
.end method

.method onRestartButtonLongClicked()V
    .locals 0

    .line 296
    invoke-direct {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->createSizeCompatHint()V

    return-void
.end method

.method release()V
    .locals 1

    .line 174
    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->dismissHint()V

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButton:Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;

    .line 176
    iget-object p0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButtonWindowManager:Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;

    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->release()V

    return-void
.end method

.method updateButtonSurfacePosition()V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButton:Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButtonWindowManager:Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;

    invoke-virtual {v0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButtonWindowManager:Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;

    invoke-virtual {v0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 307
    iget-object v1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mTaskConfig:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 308
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 309
    iget-object v3, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v3, v2}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;)V

    .line 310
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 313
    invoke-direct {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 314
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 315
    :cond_1
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButtonSize:I

    :goto_0
    sub-int/2addr v3, v4

    .line 316
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    iget v1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButtonSize:I

    sub-int/2addr v2, v1

    .line 318
    invoke-direct {p0, v0, v3, v2}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->updateSurfacePosition(Landroid/view/SurfaceControl;II)V

    :cond_2
    :goto_1
    return-void
.end method

.method updateDisplayLayout(Lcom/android/wm/shell/common/DisplayLayout;)V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    if-ne p1, v0, :cond_0

    return-void

    .line 225
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 226
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 227
    iget-object v2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;)V

    .line 228
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;)V

    .line 229
    iput-object p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 230
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 232
    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->updateButtonSurfacePosition()V

    .line 233
    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->updateHintSurfacePosition()V

    :cond_1
    return-void
.end method

.method updateHintSurfacePosition()V
    .locals 5

    .line 322
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mHint:Lcom/android/wm/shell/sizecompatui/SizeCompatHintPopup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mHintWindowManager:Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;

    if-eqz v0, :cond_2

    .line 323
    invoke-virtual {v0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mHintWindowManager:Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;

    invoke-virtual {v0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 329
    iget-object v1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mTaskConfig:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 330
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 331
    iget-object v3, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v3, v2}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;)V

    .line 332
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 335
    invoke-direct {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 336
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mPopupOffsetX:I

    add-int/2addr v3, v4

    goto :goto_0

    .line 337
    :cond_1
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mPopupOffsetX:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mHint:Lcom/android/wm/shell/sizecompatui/SizeCompatHintPopup;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    .line 338
    :goto_0
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    iget v1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mPopupOffsetY:I

    sub-int/2addr v2, v1

    iget-object v1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mHint:Lcom/android/wm/shell/sizecompatui/SizeCompatHintPopup;

    .line 339
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v2, v1

    .line 341
    invoke-direct {p0, v0, v3, v2}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->updateSurfacePosition(Landroid/view/SurfaceControl;II)V

    :cond_2
    :goto_1
    return-void
.end method

.method updateImeVisibility(Z)V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButton:Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;

    if-nez v0, :cond_0

    .line 241
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->createSizeCompatButton(Z)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 247
    :goto_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 248
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButton:Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mHint:Lcom/android/wm/shell/sizecompatui/SizeCompatHintPopup;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_3

    .line 251
    iget-object p0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mHint:Lcom/android/wm/shell/sizecompatui/SizeCompatHintPopup;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method updateSizeCompatInfo(Landroid/content/res/Configuration;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)V
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mTaskConfig:Landroid/content/res/Configuration;

    .line 183
    iget-object v1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mTaskListener:Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    .line 184
    iput-object p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mTaskConfig:Landroid/content/res/Configuration;

    .line 185
    iput-object p2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mTaskListener:Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    .line 188
    iget-object v2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mContext:Landroid/content/Context;

    .line 189
    iget-object v2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButtonWindowManager:Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;

    invoke-virtual {v2, p1}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 190
    iget-object v2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mHintWindowManager:Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;

    if-eqz v2, :cond_0

    .line 191
    invoke-virtual {v2, p1}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 194
    :cond_0
    iget-object v2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButton:Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;

    if-eqz v2, :cond_4

    if-eq v1, p2, :cond_1

    goto :goto_0

    .line 201
    :cond_1
    iget-object p2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget-object p3, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 202
    invoke-virtual {p3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 204
    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->updateButtonSurfacePosition()V

    .line 205
    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->updateHintSurfacePosition()V

    .line 208
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p2

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p3

    if-eq p2, p3, :cond_3

    .line 210
    iget-object p2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mButton:Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 211
    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->updateButtonSurfacePosition()V

    .line 212
    iget-object p2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mHint:Lcom/android/wm/shell/sizecompatui/SizeCompatHintPopup;

    if-eqz p2, :cond_3

    .line 213
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 214
    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->updateHintSurfacePosition()V

    :cond_3
    return-void

    .line 196
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->release()V

    .line 197
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->createSizeCompatButton(Z)V

    return-void
.end method
