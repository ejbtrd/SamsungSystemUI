.class public Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;
.super Ljava/lang/Object;
.source "DragAndDropPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;,
        Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;,
        Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DefaultStarter;,
        Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;,
        Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "DragAndDropPolicy"


# instance fields
.field private final mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field private mCallingPackageName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mFreeformStarter:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;

.field private mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

.field private final mSplitScreen:Lcom/android/wm/shell/ISplitScreenController;

.field private final mStarter:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;

.field private final mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 135
    sget-boolean v0, Lcom/android/wm/shell/CoreShellRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/app/ActivityTaskManager;Lcom/android/wm/shell/ISplitScreenController;Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;)V
    .locals 1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mCallingPackageName:Ljava/lang/String;

    .line 164
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    .line 165
    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 166
    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSplitScreen:Lcom/android/wm/shell/ISplitScreenController;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, p4

    .line 167
    :goto_0
    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mStarter:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;

    .line 169
    new-instance p2, Lcom/android/wm/shell/draganddrop/FreeformStarter;

    invoke-direct {p2, p1}, Lcom/android/wm/shell/draganddrop/FreeformStarter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mFreeformStarter:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/ISplitScreenController;)V
    .locals 2

    .line 158
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DefaultStarter;

    invoke-direct {v1, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DefaultStarter;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;-><init>(Landroid/content/Context;Landroid/app/ActivityTaskManager;Lcom/android/wm/shell/ISplitScreenController;Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;)V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 131
    sget-boolean v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->DEBUG:Z

    return v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 131
    sget-object v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addSplitTargets(Landroid/graphics/Rect;Z)V
    .locals 7

    .line 323
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 324
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 325
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSplitScreen:Lcom/android/wm/shell/ISplitScreenController;

    invoke-interface {v2, v0, v1}, Lcom/android/wm/shell/ISplitScreenController;->getStageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 326
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 327
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 329
    invoke-direct {p0, p2}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->useTopBottomDropTargets(Z)Z

    move-result p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz p2, :cond_0

    .line 330
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 332
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    new-array v6, v4, [Landroid/graphics/Rect;

    aput-object p2, v6, v2

    aput-object v5, v6, v3

    .line 335
    invoke-virtual {p1, v6}, Landroid/graphics/Rect;->splitHorizontally([Landroid/graphics/Rect;)V

    .line 337
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    invoke-direct {v2, v4, p2, v0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    new-instance p1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    const/4 p2, 0x4

    invoke-direct {p1, p2, v5, v1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 340
    :cond_0
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 342
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    new-array v4, v4, [Landroid/graphics/Rect;

    aput-object p2, v4, v2

    aput-object v5, v4, v3

    .line 345
    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->splitVertically([Landroid/graphics/Rect;)V

    .line 347
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    invoke-direct {v2, v3, p2, v0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    new-instance p1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    const/4 p2, 0x3

    invoke-direct {p1, p2, v5, v1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public static getCalleePackage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .line 825
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 827
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 829
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCenterFreeformBounds()Landroid/graphics/Rect;
    .locals 5

    .line 360
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 363
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    iget-object v1, v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->displayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->isLandscape()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    iget-object v1, v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->displayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v1, v0, v2}, Lcom/android/wm/shell/common/DisplayLayout;->getDisplayBounds(Landroid/graphics/Rect;Z)V

    .line 365
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/wm/shell/R$dimen;->dnd_drop_freeform_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 367
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/wm/shell/R$dimen;->dnd_drop_freeform_width:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    iget-object v1, v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->displayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;ZZ)V

    .line 372
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/wm/shell/R$dimen;->dnd_drop_freeform_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 374
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/wm/shell/R$dimen;->dnd_drop_freeform_height:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 377
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 378
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 379
    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v4, v2

    sub-int/2addr v3, p0

    .line 380
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v4

    add-int/2addr p0, v3

    .line 381
    invoke-virtual {v0, v4, v3, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0
.end method

.method private getCenterFullscreenBounds()Landroid/graphics/Rect;
    .locals 5

    .line 386
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 387
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    iget-object v1, v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->displayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/wm/shell/common/DisplayLayout;->getDisplayBounds(Landroid/graphics/Rect;Z)V

    .line 388
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 389
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 390
    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/wm/shell/R$dimen;->dnd_drop_freeform_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    .line 392
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v4, Lcom/android/wm/shell/R$dimen;->dnd_drop_freeform_height:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    sub-int/2addr v1, v3

    .line 394
    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, p0

    .line 395
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v3, v1

    add-int/2addr p0, v2

    .line 396
    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 397
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object p0
.end method

.method private inSplitScreen()Z
    .locals 0

    .line 639
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSplitScreen:Lcom/android/wm/shell/ISplitScreenController;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/wm/shell/ISplitScreenController;->isSplitScreenVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isInFlexMode()Z
    .locals 0

    .line 630
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isFlexPanelEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private needToShowFullscreenTarget()Z
    .locals 1

    .line 805
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    invoke-static {v0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->access$100(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;)Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    .line 806
    invoke-static {v0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->access$100(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;)Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    invoke-static {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->access$300(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;)Lcom/android/wm/shell/draganddrop/VisibleTasks;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->hasResolveInfoInFullscreen(Lcom/android/wm/shell/draganddrop/VisibleTasks;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private needToShowFullscreenTargetOnly()Z
    .locals 1

    .line 810
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    invoke-static {v0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->access$100(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;)Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    .line 811
    invoke-static {v0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->access$100(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;)Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    .line 812
    invoke-static {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->access$300(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;)Lcom/android/wm/shell/draganddrop/VisibleTasks;

    move-result-object p0

    .line 811
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->hasResolveInfoInFullscreenOnly(Lcom/android/wm/shell/draganddrop/VisibleTasks;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private resolveExtras(Landroid/content/Intent;ILandroid/view/DragAndDropPermissions;II)V
    .locals 1

    .line 772
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSplitScreen:Lcom/android/wm/shell/ISplitScreenController;

    invoke-interface {v0}, Lcom/android/wm/shell/ISplitScreenController;->isSplitScreenVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/4 p2, 0x1

    const-string v0, "dropResolverActivity.extra.wallpaper"

    .line 773
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const-string p2, "dragPermission"

    .line 775
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eq p5, p4, :cond_1

    .line 778
    invoke-virtual {p1, p4}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    const-string p2, "dropResolverActivity.extra.userid"

    .line 779
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 781
    :cond_1
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    invoke-static {p2}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->access$100(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;)Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->getContentType()Ljava/lang/String;

    move-result-object p2

    .line 782
    iget-object p3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    invoke-static {p3}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->access$100(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;)Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->getCallingPackageName()Ljava/lang/String;

    move-result-object p3

    .line 783
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    invoke-static {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->access$200(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "dropResolverActivity.extra.contentType"

    .line 784
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "dropResolverActivity.extra.callingPackage"

    .line 785
    invoke-virtual {p1, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 787
    :cond_2
    invoke-static {p1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->getCalleePackage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    .line 788
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ","

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "1042"

    invoke-static {p4, p1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    sget-boolean p1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->DEBUG:Z

    if-eqz p1, :cond_3

    .line 791
    sget-object p1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "handleDrop: SALogging... contentType="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", callingPackage="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", calleePackage="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method private resolveLaunchOptions(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;
    .locals 4

    .line 447
    iget v0, p1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 449
    :goto_1
    invoke-virtual {p1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->isSplit()Z

    move-result p1

    const/4 v3, -0x1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSplitScreen:Lcom/android/wm/shell/ISplitScreenController;

    if-eqz p1, :cond_4

    xor-int/lit8 p1, v0, 0x1

    .line 452
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->inSplitScreen()Z

    move-result p0

    if-nez p0, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v3, p1

    move v1, v2

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_2
    move v3, p1

    goto :goto_3

    :cond_4
    move v1, v3

    .line 463
    :goto_3
    invoke-static {v1, v3}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;->create(II)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;

    move-result-object p0

    return-object p0
.end method

.method private sendSALogging(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;IILjava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "noti"

    .line 840
    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "From Noti_D&D"

    goto :goto_1

    :cond_0
    const-string v0, "hun"

    .line 842
    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "edgelighting"

    .line 843
    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "ctw"

    .line 845
    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    const-string p0, "From App content DragNSplit"

    goto :goto_1

    .line 847
    :cond_2
    iget-object p4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mCallingPackageName:Ljava/lang/String;

    const-string v0, "com.samsung.android.app.cocktailbarservice"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    const-string p0, "From Apps edge_D&D"

    goto :goto_1

    .line 849
    :cond_3
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mCallingPackageName:Ljava/lang/String;

    const-string p4, "com.sec.android.app.launcher"

    invoke-virtual {p4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "From recent_task"

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const-string p0, "From NotiPopUp_D&D"

    :goto_1
    if-eqz p0, :cond_8

    .line 854
    sget-boolean p4, Lcom/android/wm/shell/CoreShellRune;->MW_SPLIT_USAGE_LOGGING:Z

    if-eqz p4, :cond_7

    instance-of p4, p1, Lcom/android/wm/shell/ISplitScreenController;

    if-eqz p4, :cond_7

    const/4 p4, -0x1

    if-eq p2, p4, :cond_7

    const-string p2, "1000"

    .line 856
    invoke-static {p2, p0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    invoke-static {p3}, Lcom/android/wm/shell/common/split/SplitLayout;->isMultiSplitPosition(I)Z

    move-result p2

    if-nez p2, :cond_6

    move-object p2, p1

    check-cast p2, Lcom/android/wm/shell/ISplitScreenController;

    .line 859
    invoke-interface {p2}, Lcom/android/wm/shell/ISplitScreenController;->isMultiSplitScreenVisible()Z

    move-result p2

    if-eqz p2, :cond_7

    :cond_6
    const-string p2, "1021"

    .line 860
    invoke-static {p2, p0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    :cond_7
    sget-boolean p2, Lcom/android/wm/shell/CoreShellRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz p2, :cond_8

    instance-of p1, p1, Lcom/android/wm/shell/draganddrop/FreeformStarter;

    if-eqz p1, :cond_8

    const-string p1, "2004"

    .line 865
    invoke-static {p1, p0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method private shouldBeVisible(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;)Z
    .locals 1

    .line 799
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    invoke-static {v0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->access$100(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;)Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    .line 800
    invoke-static {v0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->access$100(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;)Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    move-result-object v0

    iget p1, p1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->type:I

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    .line 801
    invoke-static {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->access$300(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;)Lcom/android/wm/shell/draganddrop/VisibleTasks;

    move-result-object p0

    .line 800
    invoke-virtual {v0, p1, p0}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->getOrCreateExecutableApp(ILcom/android/wm/shell/draganddrop/VisibleTasks;)Lcom/android/wm/shell/draganddrop/AppInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private startActivity(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;Landroid/content/Intent;IILandroid/view/DragAndDropPermissions;Landroid/os/Bundle;)V
    .locals 15

    move-object v0, p0

    .line 749
    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    invoke-static {v1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->access$100(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;)Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->getCallingUserId()I

    move-result v7

    .line 750
    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v8

    move-object v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p5

    move v5, v7

    move v6, v8

    .line 752
    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->resolveExtras(Landroid/content/Intent;ILandroid/view/DragAndDropPermissions;II)V

    if-eqz p5, :cond_0

    .line 755
    :try_start_0
    invoke-virtual/range {p5 .. p5}, Landroid/view/DragAndDropPermissions;->takeTransient()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_0
    if-eqz p6, :cond_1

    .line 757
    invoke-static/range {p6 .. p6}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v1

    goto :goto_1

    .line 758
    :cond_1
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    :goto_1
    const/4 v2, 0x1

    .line 759
    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setStartedFromWindowTypeLauncher(Z)V

    .line 761
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v13

    .line 762
    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    invoke-static {v0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->access$200(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v14, v8

    goto :goto_2

    :cond_2
    move v14, v7

    :goto_2
    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    .line 761
    invoke-interface/range {v9 .. v14}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;->startActivity(Landroid/content/Intent;IILandroid/os/Bundle;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p5, :cond_3

    .line 765
    invoke-virtual/range {p5 .. p5}, Landroid/view/DragAndDropPermissions;->release()V

    :cond_3
    return-void

    :goto_3
    if-eqz p5, :cond_4

    invoke-virtual/range {p5 .. p5}, Landroid/view/DragAndDropPermissions;->release()V

    .line 767
    :cond_4
    throw v0
.end method

.method private startClipDescription(Landroid/content/ClipDescription;Landroid/content/Intent;II)V
    .locals 7

    .line 697
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mStarter:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->startClipDescription(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;Landroid/content/ClipDescription;Landroid/content/Intent;IILandroid/view/DragAndDropPermissions;)V

    return-void
.end method

.method private startClipDescription(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;Landroid/content/ClipDescription;Landroid/content/Intent;IILandroid/view/DragAndDropPermissions;)V
    .locals 9

    const-string v0, "application/vnd.android.task"

    .line 703
    invoke-virtual {p2, v0}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "application/vnd.android.shortcut"

    .line 704
    invoke-virtual {p2, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result p2

    const-string v1, "android.intent.extra.ACTIVITY_OPTIONS"

    .line 705
    invoke-virtual {p3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 706
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 710
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    const-string v3, "android.activity.launchDisplayId"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 713
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    .line 714
    invoke-static {v2}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->access$100(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;)Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    invoke-static {v2}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->access$100(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;)Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->hasApp()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object v8, v1

    .line 716
    invoke-direct/range {v2 .. v8}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->startActivity(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;Landroid/content/Intent;IILandroid/view/DragAndDropPermissions;Landroid/os/Bundle;)V

    .line 718
    sget-boolean p2, Lcom/android/wm/shell/CoreShellRune;->MW_USAGE_LOGGING:Z

    if-eqz p2, :cond_2

    const-string p2, "ctw"

    .line 719
    invoke-direct {p0, p1, p4, p5, p2}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->sendSALogging(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;IILjava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    if-eqz v0, :cond_4

    const/4 p2, -0x1

    const-string p6, "android.intent.extra.TASK_ID"

    .line 726
    invoke-virtual {p3, p6, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 727
    invoke-interface {p1, p2, p4, p5, v1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;->startTask(IIILandroid/os/Bundle;)V

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_5

    const-string p2, "android.intent.extra.PACKAGE_NAME"

    .line 729
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p2, "android.intent.extra.shortcut.ID"

    .line 730
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p2, "android.intent.extra.USER"

    .line 731
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    move-object v8, p2

    check-cast v8, Landroid/os/UserHandle;

    move-object v2, p1

    move v5, p4

    move v6, p5

    move-object v7, v1

    .line 732
    invoke-interface/range {v2 .. v8}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;->startShortcut(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_2

    :cond_5
    const-string p2, "android.intent.extra.PENDING_INTENT"

    .line 734
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/app/PendingIntent;

    const/4 v4, 0x0

    move-object v2, p1

    move v5, p4

    move v6, p5

    move-object v7, v1

    invoke-interface/range {v2 .. v7}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;->startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;IILandroid/os/Bundle;)V

    .line 739
    :goto_2
    sget-boolean p2, Lcom/android/wm/shell/CoreShellRune;->MW_USAGE_LOGGING:Z

    if-eqz p2, :cond_6

    const-string p2, "com.samsung.android.intent.extra.DRAG_AND_DROP_REQUESTER"

    .line 741
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 740
    invoke-direct {p0, p1, p4, p5, p2}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->sendSALogging(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;IILjava/lang/String;)V

    :cond_6
    return-void
.end method

.method private useTopBottomDropTargets(Z)Z
    .locals 2

    .line 353
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->isInFlexMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 356
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->inSplitScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSplitScreen:Lcom/android/wm/shell/ISplitScreenController;

    invoke-interface {p0}, Lcom/android/wm/shell/ISplitScreenController;->getDockSide()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/policy/DockedDividerUtils;->isHorizontalDivision(I)Z

    move-result v1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method getDropTargets()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;",
            ">;"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 268
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    if-nez v0, :cond_0

    .line 270
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    return-object p0

    .line 273
    :cond_0
    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->displayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v0

    .line 274
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    iget-object v1, v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->displayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v1

    .line 275
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 276
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 277
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 279
    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    iget-boolean v4, v4, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->dragItemSupportsSplitscreen:Z

    if-nez v4, :cond_1

    .line 280
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    invoke-direct {v4, v3, v1, v0, v3}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    return-object p0

    .line 283
    :cond_1
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->needToShowFullscreenTargetOnly()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 284
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    invoke-direct {v4, v3, v1, v0, v5}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    return-object p0

    .line 289
    :cond_2
    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    iget-object v4, v4, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->displayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v4}, Lcom/android/wm/shell/common/DisplayLayout;->isLandscape()Z

    move-result v4

    .line 290
    iget-object v6, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSplitScreen:Lcom/android/wm/shell/ISplitScreenController;

    if-eqz v6, :cond_3

    invoke-interface {v6}, Lcom/android/wm/shell/ISplitScreenController;->isSplitScreenVisible()Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v5

    goto :goto_0

    :cond_3
    move v6, v3

    .line 293
    :goto_0
    iget-object v7, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    iget v8, v7, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->runningTaskActType:I

    if-ne v8, v5, :cond_4

    if-nez v6, :cond_5

    iget v6, v7, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->runningTaskWinMode:I

    if-ne v6, v5, :cond_4

    iget-boolean v6, v7, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->runningTaskIsSupportMultiWindow:Z

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    move v5, v3

    :cond_5
    :goto_1
    if-eqz v5, :cond_6

    .line 305
    invoke-direct {p0, v2, v4}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->addSplitTargets(Landroid/graphics/Rect;Z)V

    .line 307
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->needToShowFullscreenTarget()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 308
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->getCenterFullscreenBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 309
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    invoke-direct {v4, v3, v1, v0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 314
    :cond_6
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    invoke-direct {v4, v3, v1, v0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->getCenterFreeformBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 317
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    const/4 v3, 0x5

    invoke-direct {v2, v3, v0, v0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    return-object p0
.end method

.method getTargetAtLocation(II)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;
    .locals 3

    .line 652
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 653
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 656
    invoke-static {v1, p1, p2}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->access$000(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;II)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->shouldBeVisible(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method handleDrop(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;Landroid/content/ClipData;)V
    .locals 4

    if-eqz p1, :cond_6

    .line 671
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSplitScreen:Lcom/android/wm/shell/ISplitScreenController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/wm/shell/ISplitScreenController;->isSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 676
    :goto_0
    iget p1, p1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->type:I

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    if-ne p1, v2, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    const/4 v3, -0x1

    if-eqz p1, :cond_5

    .line 680
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSplitScreen:Lcom/android/wm/shell/ISplitScreenController;

    if-eqz p1, :cond_5

    xor-int/lit8 p1, v1, 0x1

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    move v3, p1

    goto :goto_2

    :cond_5
    move v2, v3

    .line 689
    :goto_2
    invoke-virtual {p2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p1

    .line 690
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    iget-object p2, p2, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->dragData:Landroid/content/Intent;

    .line 691
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->startClipDescription(Landroid/content/ClipDescription;Landroid/content/Intent;II)V

    :cond_6
    :goto_3
    return-void
.end method

.method handleDropTarget(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;Landroid/content/ClipData;Landroid/view/DragAndDropPermissions;)V
    .locals 8

    if-eqz p1, :cond_2

    .line 401
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 405
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->resolveLaunchOptions(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;

    move-result-object v0

    .line 406
    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;->getStage()I

    move-result v5

    .line 407
    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;->getPosition()I

    move-result v6

    .line 409
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mStarter:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;

    .line 410
    invoke-virtual {p1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->isFreeform()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mFreeformStarter:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;

    if-eqz p1, :cond_1

    move-object v2, p1

    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 414
    :goto_0
    invoke-virtual {p2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    .line 415
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    iget-object v4, p1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->dragData:Landroid/content/Intent;

    move-object v1, p0

    move-object v7, p3

    .line 416
    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->startClipDescription(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;Landroid/content/ClipDescription;Landroid/content/Intent;IILandroid/view/DragAndDropPermissions;)V

    :cond_2
    :goto_1
    return-void
.end method

.method onTargetChanged(I)V
    .locals 1

    .line 818
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    invoke-static {v0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->access$100(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;)Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    invoke-static {v0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->access$100(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;)Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->updateExecutableApp(I)V

    .line 820
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    invoke-static {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->access$400(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;)V

    :cond_0
    return-void
.end method

.method public setCallingPackageName(Ljava/lang/String;)V
    .locals 0

    .line 835
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mCallingPackageName:Ljava/lang/String;

    return-void
.end method

.method start(Lcom/android/wm/shell/common/DisplayLayout;Landroid/content/ClipData;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;Lcom/android/wm/shell/draganddrop/VisibleTasks;)V
    .locals 8

    .line 184
    new-instance v7, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    move-object v0, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;-><init>(Landroid/content/Context;Landroid/app/ActivityTaskManager;Lcom/android/wm/shell/common/DisplayLayout;Landroid/content/ClipData;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;Lcom/android/wm/shell/draganddrop/VisibleTasks;)V

    iput-object v7, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    .line 189
    invoke-virtual {v7}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->update()V

    return-void
.end method
