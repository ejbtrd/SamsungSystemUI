.class public Lcom/android/wm/shell/draganddrop/DropTargetLayout;
.super Landroid/widget/FrameLayout;
.source "DropTargetLayout.java"

# interfaces
.implements Lcom/android/wm/shell/draganddrop/IDragLayout;


# instance fields
.field private final mAppIcon:Lcom/android/wm/shell/draganddrop/DragAppIcon;

.field private mCurrentDensityDpi:I

.field private mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

.field private final mDismissBounds:Landroid/graphics/Rect;

.field private mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

.field private mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

.field private mDragSurface:Landroid/view/SurfaceControl;

.field private final mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

.field private mFirstDropTargetShown:Z

.field private mHasDrawable:Z

.field private mHasDropped:Z

.field private mIsShowing:Z

.field private final mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private final mTmpOptions:Lcom/android/wm/shell/draganddrop/DragAndDropOptions;

.field private final mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public static synthetic $r8$lambda$94LbIM1Tc3FOBSZWPwXfHsqAqJw(Lcom/android/wm/shell/draganddrop/DropTargetLayout;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->lambda$hide$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/ISplitScreenController;Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 97
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;

    invoke-direct {v0}, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mTmpOptions:Lcom/android/wm/shell/draganddrop/DragAndDropOptions;

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 89
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 98
    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    invoke-direct {v0, p1, p2}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;-><init>(Landroid/content/Context;Lcom/android/wm/shell/ISplitScreenController;)V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    .line 100
    sget p2, Lcom/android/wm/shell/R$layout;->drop_target_layout:I

    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 101
    sget p2, Lcom/android/wm/shell/R$id;->drop_target:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/draganddrop/DropTargetView;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

    .line 102
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->createDismissButtonView()V

    .line 105
    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 106
    sget p2, Lcom/android/wm/shell/R$id;->drag_app_icon:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/draganddrop/DragAppIcon;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mAppIcon:Lcom/android/wm/shell/draganddrop/DragAppIcon;

    const-string/jumbo p2, "statusbar"

    .line 108
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/StatusBarManager;

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 109
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentDensityDpi:I

    return-void
.end method

.method private createDismissButtonView()V
    .locals 3

    .line 392
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$layout;->dismiss_button_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/DismissButtonView;

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 394
    sget v1, Lcom/android/wm/shell/R$string;->dnd_cancel:I

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DismissButtonView;->setText(I)V

    .line 395
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    sget v1, Lcom/android/wm/shell/R$string;->accessibility_drop_now_to_cancel:I

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DismissButtonView;->setAccessibilityText(I)V

    .line 396
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    sget-object v1, Lcom/android/wm/shell/common/DismissButtonView$DismissType;->DND:Lcom/android/wm/shell/common/DismissButtonView$DismissType;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DismissButtonView;->setDismissType(Lcom/android/wm/shell/common/DismissButtonView$DismissType;)V

    .line 399
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DismissButtonView;->setFocusChangeHapticDisable(Z)V

    .line 401
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private getTargetAtLocation(Landroid/view/DragEvent;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DismissButtonView;->isEnterDismissButton()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 241
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    .line 242
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 241
    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->getTargetAtLocation(II)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    move-result-object p0

    return-object p0
.end method

.method private isTargetTypeChanged(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return p0

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 346
    iget p1, p1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->type:I

    iget p2, p2, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->type:I

    if-eq p1, p2, :cond_1

    move p0, v0

    :cond_1
    return p0

    :cond_2
    return v0
.end method

.method private synthetic lambda$hide$0(Ljava/lang/Runnable;)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DismissButtonView;->isEnterDismissButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/wm/shell/common/DismissButtonView;->updateView(ZZ)V

    :cond_0
    if-eqz p1, :cond_1

    .line 273
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private notifyAppIconHasDrawable(Z)V
    .locals 0

    .line 315
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->notifyDragSplitAppIconHasDrawable(Z)V

    return-void
.end method

.method private performSoundEffect(I)V
    .locals 1

    .line 327
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-nez p0, :cond_0

    const-string p0, "DropTargetLayout"

    const-string p1, "Couldn\'t get audio manager"

    .line 330
    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 333
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    return-void
.end method

.method private recomputeDropTargets()V
    .locals 5

    .line 164
    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mIsShowing:Z

    if-nez v0, :cond_0

    return-void

    .line 167
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->getDropTargets()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 168
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 169
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 170
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v0

    const-string v2, "Add target: %s"

    invoke-static {v3, v2, v4}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateAppIcon(Landroid/view/DragEvent;)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mAppIcon:Lcom/android/wm/shell/draganddrop/DragAppIcon;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mAppIcon:Lcom/android/wm/shell/draganddrop/DragAppIcon;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/draganddrop/DragAppIcon;->show(FF)V

    return-void

    .line 233
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mAppIcon:Lcom/android/wm/shell/draganddrop/DragAppIcon;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/draganddrop/DragAppIcon;->setLocation(FF)V

    return-void
.end method

.method private updateDismissButton(Landroid/view/DragEvent;)V
    .locals 2

    .line 188
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 189
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 190
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, p1, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 191
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/DismissButtonView;->updateView(Landroid/graphics/Rect;)V

    return-void
.end method

.method private updateDropTarget(Landroid/view/DragEvent;)V
    .locals 5

    .line 197
    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->getTargetAtLocation(Landroid/view/DragEvent;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    move-result-object p1

    .line 198
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    if-eq v0, p1, :cond_4

    .line 199
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "Current target: %s"

    invoke-static {v0, v4, v2}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    if-nez v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mTmpOptions:Lcom/android/wm/shell/draganddrop/DragAndDropOptions;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;->updateFrom(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;)V

    .line 208
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mTmpOptions:Lcom/android/wm/shell/draganddrop/DragAndDropOptions;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/draganddrop/DropTargetView;->bind(Lcom/android/wm/shell/draganddrop/DragAndDropOptions;)V

    .line 209
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

    iget-object v2, p1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->drawRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/draganddrop/DropTargetView;->updateBounds(Landroid/graphics/Rect;)V

    .line 211
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 212
    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->isTargetTypeChanged(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mFirstDropTargetShown:Z

    if-eqz v0, :cond_2

    .line 215
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->performDropTargetChangedHaptic()V

    .line 219
    :cond_2
    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mFirstDropTargetShown:Z

    if-nez v0, :cond_3

    .line 220
    iput-boolean v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mFirstDropTargetShown:Z

    .line 223
    :cond_3
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    :cond_4
    return-void
.end method

.method private updateNavigationBarVisibility(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 369
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0

    .line 371
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 p1, 0x1600000

    invoke-virtual {p0, p1}, Landroid/app/StatusBarManager;->disable(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public drop(Landroid/view/DragEvent;Landroid/view/SurfaceControl;Ljava/lang/Runnable;)Z
    .locals 4

    .line 290
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 291
    :goto_0
    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mHasDropped:Z

    .line 294
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    invoke-static {p1}, Landroid/view/DragAndDropPermissions;->obtain(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    move-result-object v3

    invoke-virtual {v0, p2, v2, v3}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->handleDropTarget(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;Landroid/content/ClipData;Landroid/view/DragAndDropPermissions;)V

    .line 297
    invoke-virtual {p0, p1, p3}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->hide(Landroid/view/DragEvent;Ljava/lang/Runnable;)V

    return v1
.end method

.method public getCurrentTarget()Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;
    .locals 0

    .line 363
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    return-object p0
.end method

.method public hasDropped()Z
    .locals 0

    .line 125
    iget-boolean p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mHasDropped:Z

    return p0
.end method

.method public hide(Landroid/view/DragEvent;Ljava/lang/Runnable;)V
    .locals 2

    const/4 p1, 0x0

    .line 251
    iput-boolean p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mIsShowing:Z

    const/4 p1, 0x1

    .line 252
    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->updateNavigationBarVisibility(Z)V

    .line 253
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    if-eqz p1, :cond_0

    .line 254
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 258
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mAppIcon:Lcom/android/wm/shell/draganddrop/DragAppIcon;

    invoke-virtual {p1}, Lcom/android/wm/shell/draganddrop/DragAppIcon;->hide()V

    .line 260
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDragSurface:Landroid/view/SurfaceControl;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 261
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p1, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 262
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 263
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDragSurface:Landroid/view/SurfaceControl;

    .line 267
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DismissButtonView;->isEnterAnimating()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    .line 278
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 268
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    new-instance v1, Lcom/android/wm/shell/draganddrop/DropTargetLayout$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/android/wm/shell/draganddrop/DropTargetLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/draganddrop/DropTargetLayout;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v1}, Lcom/android/wm/shell/common/DismissButtonView;->hide(Ljava/lang/Runnable;)V

    .line 281
    :cond_4
    :goto_1
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    return-void
.end method

.method public isShowing()Z
    .locals 0

    .line 355
    iget-boolean p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mIsShowing:Z

    return p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->recomputeDropTargets()V

    .line 115
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 377
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 379
    iget v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentDensityDpi:I

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v0, p1, :cond_1

    .line 380
    iput p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentDensityDpi:I

    .line 381
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 382
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 383
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->createDismissButtonView()V

    .line 384
    iget-boolean p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mIsShowing:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isShown()Z

    move-result p1

    if-nez p1, :cond_1

    .line 385
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    if-eqz p0, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets()Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 385
    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/DismissButtonView;->show(Landroid/graphics/Insets;)V

    :cond_1
    return-void
.end method

.method public onExecutableAppChanged(Lcom/android/wm/shell/draganddrop/AppInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDragSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mAppIcon:Lcom/android/wm/shell/draganddrop/DragAppIcon;

    iget-object p1, p1, Lcom/android/wm/shell/draganddrop/AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/draganddrop/DragAppIcon;->updateIconImage(Landroid/graphics/drawable/Drawable;)V

    .line 306
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mAppIcon:Lcom/android/wm/shell/draganddrop/DragAppIcon;

    invoke-virtual {p1}, Lcom/android/wm/shell/draganddrop/DragAppIcon;->hasDrawable()Z

    move-result p1

    .line 307
    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mHasDrawable:Z

    if-eq v0, p1, :cond_0

    .line 308
    iput-boolean p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mHasDrawable:Z

    .line 309
    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->notifyAppIconHasDrawable(Z)V

    :cond_0
    return-void
.end method

.method public performDragStartedHapticAndSound()V
    .locals 1

    const/16 v0, 0x6c

    .line 322
    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    const/16 v0, 0x6a

    .line 323
    invoke-direct {p0, v0}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->performSoundEffect(I)V

    return-void
.end method

.method public performDropTargetChangedHaptic()V
    .locals 1

    const/16 v0, 0x29

    .line 338
    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    return-void
.end method

.method public prepare(Lcom/android/wm/shell/common/DisplayLayout;Landroid/content/ClipData;Landroid/view/SurfaceControl;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;Lcom/android/wm/shell/draganddrop/VisibleTasks;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    invoke-virtual {v0, p1, p2, p4, p5}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->start(Lcom/android/wm/shell/common/DisplayLayout;Landroid/content/ClipData;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;Lcom/android/wm/shell/draganddrop/VisibleTasks;)V

    .line 137
    iget-object p4, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    sget p5, Lcom/android/wm/shell/R$string;->dnd_cancel:I

    invoke-virtual {p4, p5}, Lcom/android/wm/shell/common/DismissButtonView;->setText(I)V

    .line 138
    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDragSurface:Landroid/view/SurfaceControl;

    const/4 p3, 0x0

    .line 139
    iput-boolean p3, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mHasDropped:Z

    const/4 p4, 0x0

    .line 140
    iput-object p4, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 141
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 142
    iput-boolean p3, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mHasDrawable:Z

    .line 144
    iput-boolean p3, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mFirstDropTargetShown:Z

    .line 147
    sget-boolean p1, Lcom/android/wm/shell/CoreShellRune;->MW_USAGE_LOGGING:Z

    if-eqz p1, :cond_0

    .line 148
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    invoke-virtual {p2}, Landroid/content/ClipData;->getCallingPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->setCallingPackageName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mIsShowing:Z

    const/4 v0, 0x0

    .line 155
    invoke-direct {p0, v0}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->updateNavigationBarVisibility(Z)V

    .line 156
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->recomputeDropTargets()V

    .line 157
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets()Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/DismissButtonView;->show(Landroid/graphics/Insets;)V

    return-void
.end method

.method public update(Landroid/view/DragEvent;)V
    .locals 0

    .line 179
    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->updateDismissButton(Landroid/view/DragEvent;)V

    .line 180
    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->updateDropTarget(Landroid/view/DragEvent;)V

    .line 182
    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->updateAppIcon(Landroid/view/DragEvent;)V

    .line 183
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->type:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->onTargetChanged(I)V

    return-void
.end method
