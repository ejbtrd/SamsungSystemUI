.class Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$1;
.super Ljava/lang/Object;
.source "SafeUIStatusBarKeyguardViewManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$1;->this$0:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFullyHidden()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$1;->this$0:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateStates()V

    .line 120
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$1;->this$0:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->access$000(Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;)V

    return-void
.end method

.method public onFullyShown()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$1;->this$0:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateStates()V

    .line 103
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$1;->this$0:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->access$000(Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;)V

    return-void
.end method

.method public onStartingToHide()V
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$1;->this$0:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateStates()V

    return-void
.end method

.method public onStartingToShow()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$1;->this$0:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateStates()V

    .line 114
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$1;->this$0:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->access$000(Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;)V

    return-void
.end method
