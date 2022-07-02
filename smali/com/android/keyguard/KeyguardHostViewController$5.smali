.class Lcom/android/keyguard/KeyguardHostViewController$5;
.super Ljava/lang/Object;
.source "KeyguardHostViewController.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardHostViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardHostViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostViewController;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$5;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    if-eqz p2, :cond_0

    .line 342
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$5;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardHostViewController;->access$800(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/keyguard/CarrierText;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 343
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$5;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/keyguard/KeyguardHostViewController;->access$2302(Lcom/android/keyguard/KeyguardHostViewController;Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout;

    .line 344
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$5;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardHostViewController;->access$2400(Lcom/android/keyguard/KeyguardHostViewController;)V

    .line 346
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController$5;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardHostViewController;->access$800(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/keyguard/CarrierText;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
