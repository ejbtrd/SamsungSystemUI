.class public Lcom/android/systemui/statusbar/phone/SafeUIStatusBarWindowController;
.super Lcom/android/systemui/SystemUI;
.source "SafeUIStatusBarWindowController.java"


# instance fields
.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mSafeUIWindowView:Landroid/widget/FrameLayout;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public add(Landroid/view/ViewGroup;I)V
    .locals 6

    .line 77
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x7d0

    const v4, -0x7f7bffb8

    const/4 v5, -0x3

    move-object v0, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 87
    new-instance p2, Landroid/os/Binder;

    invoke-direct {p2}, Landroid/os/Binder;-><init>()V

    iput-object p2, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 88
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 p2, 0x30

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 p2, 0x10

    .line 89
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const-string p2, "SafeUIBar"

    .line 90
    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 91
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object p2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 92
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 p2, 0x3

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 95
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarWindowController;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarWindowController;->mSafeUIWindowView:Landroid/widget/FrameLayout;

    invoke-interface {p2, p0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onBootCompleted()V
    .locals 1

    const-string p0, "SafeUIStatusBarWindowController"

    const-string/jumbo v0, "onBootCompleted()"

    .line 104
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public start()V
    .locals 3

    const-string v0, "SafeUIStatusBarWindowController"

    const-string/jumbo v1, "start"

    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarWindowController;->mWindowManager:Landroid/view/WindowManager;

    .line 59
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->safe_ui_status_bar_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarWindowController;->mSafeUIWindowView:Landroid/widget/FrameLayout;

    .line 61
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10504bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 63
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarWindowController;->mSafeUIWindowView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarWindowController;->add(Landroid/view/ViewGroup;I)V

    return-void
.end method
