.class Lcom/android/keyguard/KeyguardSecSimPukViewController$1;
.super Ljava/lang/Object;
.source "KeyguardSecSimPukViewController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecSimPukViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecSimPukViewController;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->access$000(Lcom/android/keyguard/KeyguardSecSimPukViewController;)I

    move-result v0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->resetState()V

    .line 65
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->access$002(Lcom/android/keyguard/KeyguardSecSimPukViewController;I)I

    .line 66
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->access$100(Lcom/android/keyguard/KeyguardSecSimPukViewController;)V

    :cond_0
    return-void
.end method
