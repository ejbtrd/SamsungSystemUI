.class Lcom/android/keyguard/KeyguardSecSimPinViewController$1;
.super Ljava/lang/Object;
.source "KeyguardSecSimPinViewController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecSimPinViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecSimPinViewController;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->access$000(Lcom/android/keyguard/KeyguardSecSimPinViewController;)I

    move-result v0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->resetState()V

    .line 68
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->access$002(Lcom/android/keyguard/KeyguardSecSimPinViewController;I)I

    .line 69
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->access$100(Lcom/android/keyguard/KeyguardSecSimPinViewController;)V

    :cond_0
    return-void
.end method
