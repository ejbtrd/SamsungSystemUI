.class Lcom/android/keyguard/KeyguardCarrierViewController$4;
.super Ljava/lang/Object;
.source "KeyguardCarrierViewController.java"

# interfaces
.implements Lcom/android/keyguard/EmergencyButtonController$EmergencyButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardCarrierViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardCarrierViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardCarrierViewController;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController$4;->this$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEmergencyButtonClickedWhenInCall()V
    .locals 0

    .line 407
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController$4;->this$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    return-void
.end method
