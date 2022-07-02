.class Lcom/android/keyguard/KeyguardCarrierPasswordViewController$1;
.super Ljava/lang/Object;
.source "KeyguardCarrierPasswordViewController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


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

    .line 53
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$1;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$1;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->access$000(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;)I

    move-result v0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$1;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->updateLayout()V

    .line 58
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$1;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->access$002(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;I)I

    :cond_0
    return-void
.end method
