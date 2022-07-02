.class Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$SubscreenSignalInfoPresentation;
.super Landroid/app/Presentation;
.source "SubscreenSignalInfoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubscreenSignalInfoPresentation"
.end annotation


# instance fields
.field mContents:Landroid/view/ViewGroup;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;Landroid/content/Context;Landroid/view/Display;Landroid/view/View;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$SubscreenSignalInfoPresentation;->this$0:Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;

    .line 118
    sget p1, Lcom/android/systemui/R$style;->SubscreenNotification:I

    invoke-direct {p0, p2, p3, p1}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;I)V

    .line 120
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$SubscreenSignalInfoPresentation;->mContents:Landroid/view/ViewGroup;

    .line 121
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-eqz p1, :cond_0

    .line 122
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$SubscreenSignalInfoPresentation;->mContents:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$SubscreenSignalInfoPresentation;->mContents:Landroid/view/ViewGroup;

    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 126
    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 127
    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string p3, "SubScreenSignalInfo"

    invoke-virtual {p1, p3}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {p0, p2}, Landroid/app/Presentation;->setCancelable(Z)V

    return-void
.end method


# virtual methods
.method public getContents()Landroid/view/ViewGroup;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$SubscreenSignalInfoPresentation;->mContents:Landroid/view/ViewGroup;

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 133
    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "SubscreenSignalInfoController"

    const-string v0, " SubscreenSignalInfoPresentation onCreate"

    .line 134
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$SubscreenSignalInfoPresentation;->mContents:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->setContentView(Landroid/view/View;)V

    .line 138
    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x700

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 142
    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 143
    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/16 v0, 0x8

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 145
    :cond_0
    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    .line 146
    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 151
    invoke-super {p0}, Landroid/app/Presentation;->onStop()V

    const-string v0, "SubscreenSignalInfoController"

    const-string v1, " SubscreenSignalInfoPresentation onStop"

    .line 152
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$SubscreenSignalInfoPresentation;->this$0:Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->access$100(Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;)Lcom/android/systemui/util/wakelock/SettableWakeLock;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$SubscreenSignalInfoPresentation;->this$0:Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->access$200(Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;)Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$SubscreenSignalInfoPresentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$SubscreenSignalInfoPresentation;->getContents()Landroid/view/ViewGroup;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 157
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$SubscreenSignalInfoPresentation;->this$0:Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->access$202(Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$SubscreenSignalInfoPresentation;)Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$SubscreenSignalInfoPresentation;

    .line 160
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$SubscreenSignalInfoPresentation;->this$0:Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->access$000(Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;)Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;->stopMarquee()V

    return-void
.end method
