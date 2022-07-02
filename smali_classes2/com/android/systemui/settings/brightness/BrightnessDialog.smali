.class public Lcom/android/systemui/settings/brightness/BrightnessDialog;
.super Landroid/app/Activity;
.source "BrightnessDialog.java"


# instance fields
.field private mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private mTimer:Landroid/os/CountDownTimer;

.field private final mToggleSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mTimer:Landroid/os/CountDownTimer;

    .line 63
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 64
    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mToggleSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;

    return-void
.end method


# virtual methods
.method public cancelTimer()V
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mTimer:Landroid/os/CountDownTimer;

    if-eqz p0, :cond_0

    .line 168
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessDialog;->cancelTimer()V

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 160
    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessDialog;->startCountDown()V

    .line 162
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x31

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    const/4 v0, 0x2

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    const/4 v0, 0x1

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 80
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 81
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 85
    sget p1, Lcom/android/systemui/R$layout;->sec_brightness_mirror_container:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 86
    sget p1, Lcom/android/systemui/R$id;->brightness_mirror_container:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    .line 88
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 90
    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mToggleSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;

    invoke-virtual {v1, p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;->create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/settings/brightness/BrightnessSlider;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 92
    invoke-virtual {v1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2, v0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 94
    sget v0, Lcom/android/systemui/R$id;->brightness_detail:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const-string p1, "brightness_dialog"

    .line 95
    invoke-virtual {v1, p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->setTag(Ljava/lang/String;)V

    .line 98
    new-instance p1, Lcom/android/systemui/settings/brightness/BrightnessController;

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-direct {p1, p0, v1, v0}, Lcom/android/systemui/settings/brightness/BrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/brightness/ToggleSlider;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 101
    invoke-virtual {p1, p0}, Lcom/android/systemui/settings/brightness/BrightnessController;->setBrightnessDialog(Lcom/android/systemui/settings/brightness/BrightnessDialog;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0xdd

    if-ne p1, v0, :cond_0

    const/16 v0, 0xdc

    if-eq p1, v0, :cond_1

    .line 141
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 151
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onStart()V
    .locals 7

    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessController;->registerCallbacks()V

    const/16 v0, 0xdc

    .line 109
    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 111
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessDialog$1;

    const-wide/16 v3, 0x1388

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/settings/brightness/BrightnessDialog$1;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDialog;JJ)V

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mTimer:Landroid/os/CountDownTimer;

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessDialog;->startCountDown()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 127
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/16 v0, 0xdc

    .line 128
    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 129
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessController;->unregisterCallbacks()V

    .line 131
    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessDialog;->cancelTimer()V

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public resetTimer()V
    .locals 0

    .line 183
    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessDialog;->cancelTimer()V

    .line 184
    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessDialog;->startCountDown()V

    return-void
.end method

.method public startCountDown()V
    .locals 0

    .line 174
    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessDialog;->cancelTimer()V

    .line 175
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mTimer:Landroid/os/CountDownTimer;

    if-eqz p0, :cond_0

    .line 176
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method
