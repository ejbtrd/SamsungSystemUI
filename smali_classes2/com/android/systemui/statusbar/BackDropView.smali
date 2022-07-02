.class public Lcom/android/systemui/statusbar/BackDropView;
.super Landroid/widget/FrameLayout;
.source "BackDropView.java"


# instance fields
.field private mIsKwpInitiated:Z

.field private mOnVisibilityChangedRunnable:Ljava/lang/Runnable;

.field private mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BackDropView;->mIsKwpInitiated:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BackDropView;->mIsKwpInitiated:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BackDropView;->mIsKwpInitiated:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BackDropView;->mIsKwpInitiated:Z

    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 89
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 91
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BackDropView;->mIsKwpInitiated:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BackDropView;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onFinishInflate()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackDropView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/BackDropView;->mIsKwpInitiated:Z

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/BackDropView;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setRootView(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 65
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-ne p1, p0, :cond_0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/BackDropView;->mOnVisibilityChangedRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 67
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public setWallpaperController(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setWallpaperController()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackDropView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iput-object p1, p0, Lcom/android/systemui/statusbar/BackDropView;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 80
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BackDropView;->mIsKwpInitiated:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/BackDropView;->mIsKwpInitiated:Z

    .line 82
    invoke-virtual {p1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setRootView(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method
