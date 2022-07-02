.class Lcom/android/keyguard/EmergencyButtonController$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "EmergencyButtonController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/EmergencyButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/EmergencyButtonController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/EmergencyButtonController;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButtonController$1;->this$0:Lcom/android/keyguard/EmergencyButtonController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardBouncerChanged(Z)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButtonController$1;->this$0:Lcom/android/keyguard/EmergencyButtonController;

    invoke-static {v0, p1}, Lcom/android/keyguard/EmergencyButtonController;->access$402(Lcom/android/keyguard/EmergencyButtonController;Z)Z

    .line 133
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButtonController$1;->this$0:Lcom/android/keyguard/EmergencyButtonController;

    invoke-static {p0}, Lcom/android/keyguard/EmergencyButtonController;->access$200(Lcom/android/keyguard/EmergencyButtonController;)V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButtonController$1;->this$0:Lcom/android/keyguard/EmergencyButtonController;

    invoke-static {v0, p1}, Lcom/android/keyguard/EmergencyButtonController;->access$302(Lcom/android/keyguard/EmergencyButtonController;Z)Z

    .line 126
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButtonController$1;->this$0:Lcom/android/keyguard/EmergencyButtonController;

    invoke-static {p0}, Lcom/android/keyguard/EmergencyButtonController;->access$200(Lcom/android/keyguard/EmergencyButtonController;)V

    return-void
.end method

.method public onOfflineStateChanged()V
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButtonController$1;->this$0:Lcom/android/keyguard/EmergencyButtonController;

    invoke-static {p0}, Lcom/android/keyguard/EmergencyButtonController;->access$200(Lcom/android/keyguard/EmergencyButtonController;)V

    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButtonController$1;->this$0:Lcom/android/keyguard/EmergencyButtonController;

    invoke-static {p0}, Lcom/android/keyguard/EmergencyButtonController;->access$200(Lcom/android/keyguard/EmergencyButtonController;)V

    return-void
.end method

.method public onRefreshCarrierInfo()V
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButtonController$1;->this$0:Lcom/android/keyguard/EmergencyButtonController;

    invoke-static {p0}, Lcom/android/keyguard/EmergencyButtonController;->access$200(Lcom/android/keyguard/EmergencyButtonController;)V

    return-void
.end method

.method public onSimStateChanged(III)V
    .locals 0

    .line 100
    iget-object p2, p0, Lcom/android/keyguard/EmergencyButtonController$1;->this$0:Lcom/android/keyguard/EmergencyButtonController;

    invoke-static {p2, p1}, Lcom/android/keyguard/EmergencyButtonController;->access$002(Lcom/android/keyguard/EmergencyButtonController;I)I

    .line 101
    iget-object p1, p0, Lcom/android/keyguard/EmergencyButtonController$1;->this$0:Lcom/android/keyguard/EmergencyButtonController;

    invoke-static {p1, p3}, Lcom/android/keyguard/EmergencyButtonController;->access$102(Lcom/android/keyguard/EmergencyButtonController;I)I

    .line 102
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButtonController$1;->this$0:Lcom/android/keyguard/EmergencyButtonController;

    invoke-static {p0}, Lcom/android/keyguard/EmergencyButtonController;->access$200(Lcom/android/keyguard/EmergencyButtonController;)V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButtonController$1;->this$0:Lcom/android/keyguard/EmergencyButtonController;

    invoke-static {p0}, Lcom/android/keyguard/EmergencyButtonController;->access$200(Lcom/android/keyguard/EmergencyButtonController;)V

    return-void
.end method
