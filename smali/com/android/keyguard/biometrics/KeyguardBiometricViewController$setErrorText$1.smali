.class public final Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setErrorText$1;
.super Ljava/lang/Object;
.source "KeyguardBiometricViewController.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->setErrorText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setErrorText$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setErrorText$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$getBiometricErrorText$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Lcom/android/systemui/widget/SystemUITextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 308
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setErrorText$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$getBiometricErrorText$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Lcom/android/systemui/widget/SystemUITextView;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setErrorText$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    .line 309
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "it.text"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 310
    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$initBiometricErrorIndicationAnimationValue(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    goto :goto_1

    .line 312
    :cond_1
    invoke-static {p0, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$startShowingBiometricErrorAnimation(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;Lcom/android/systemui/widget/SystemUITextView;)V

    :goto_1
    return v2
.end method
