.class Lcom/android/keyguard/KeyguardTextBuilder$1;
.super Landroid/text/style/ClickableSpan;
.source "KeyguardTextBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardTextBuilder;->updateStrongAuthTimeoutMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardTextBuilder;

.field final synthetic val$securityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardTextBuilder;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0

    .line 554
    iput-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder$1;->this$0:Lcom/android/keyguard/KeyguardTextBuilder;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardTextBuilder$1;->val$securityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 557
    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder$1;->this$0:Lcom/android/keyguard/KeyguardTextBuilder;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardTextBuilder;->access$000(Lcom/android/keyguard/KeyguardTextBuilder;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 558
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p1

    .line 557
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result p1

    .line 559
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTextBuilder$1;->this$0:Lcom/android/keyguard/KeyguardTextBuilder;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardTextBuilder;->access$000(Lcom/android/keyguard/KeyguardTextBuilder;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$style;->keyguard_strong_auth_timeout_dialog_style:I

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    .line 560
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTextBuilder$1;->this$0:Lcom/android/keyguard/KeyguardTextBuilder;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardTextBuilder;->access$000(Lcom/android/keyguard/KeyguardTextBuilder;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardTextBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder$1;->val$securityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardTextBuilder;->getStrongAuthTimeOutMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 561
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq p1, v4, :cond_0

    if-ne p1, v3, :cond_1

    .line 562
    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardTextBuilder$1;->this$0:Lcom/android/keyguard/KeyguardTextBuilder;

    .line 563
    invoke-static {v4}, Lcom/android/keyguard/KeyguardTextBuilder;->access$100(Lcom/android/keyguard/KeyguardTextBuilder;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isDualDisplayPolicyAllowed()Z

    move-result v4

    if-nez v4, :cond_1

    .line 564
    iget-object v4, p0, Lcom/android/keyguard/KeyguardTextBuilder$1;->this$0:Lcom/android/keyguard/KeyguardTextBuilder;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardTextBuilder;->access$200(Lcom/android/keyguard/KeyguardTextBuilder;)I

    move-result v4

    invoke-virtual {v1, v4, v2}, Landroid/view/Window;->setLayout(II)V

    const/16 v2, 0x13

    .line 565
    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    if-ne p1, v3, :cond_2

    .line 567
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 568
    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder$1;->this$0:Lcom/android/keyguard/KeyguardTextBuilder;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardTextBuilder;->access$000(Lcom/android/keyguard/KeyguardTextBuilder;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->navigation_bar_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 569
    invoke-virtual {v1, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 572
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder$1;->this$0:Lcom/android/keyguard/KeyguardTextBuilder;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardTextBuilder;->access$200(Lcom/android/keyguard/KeyguardTextBuilder;)I

    move-result p1

    invoke-virtual {v1, p1, v2}, Landroid/view/Window;->setLayout(II)V

    const/16 p1, 0x11

    .line 573
    invoke-virtual {v1, p1}, Landroid/view/Window;->setGravity(I)V

    .line 575
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder$1;->this$0:Lcom/android/keyguard/KeyguardTextBuilder;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardTextBuilder;->access$000(Lcom/android/keyguard/KeyguardTextBuilder;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$drawable;->keyguard_strong_auth_timeout_popup_drawable:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p0, 0x7d9

    .line 577
    invoke-virtual {v1, p0}, Landroid/view/Window;->setType(I)V

    const/4 p0, 0x2

    .line 578
    invoke-virtual {v1, p0}, Landroid/view/Window;->clearFlags(I)V

    .line 579
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const-string p0, "102"

    const-string p1, "1073"

    .line 582
    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    const/4 p0, 0x1

    .line 589
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 590
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    return-void
.end method
