.class Lcom/android/keyguard/KeyguardCarrierPasswordViewController$3;
.super Ljava/lang/Object;
.source "KeyguardCarrierPasswordViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardCarrierPasswordViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$3;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$3;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->access$100(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardCarrierPasswordView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$3;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->access$200(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 206
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$3;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->access$300(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$3;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->access$200(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;)Landroid/widget/EditText;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
