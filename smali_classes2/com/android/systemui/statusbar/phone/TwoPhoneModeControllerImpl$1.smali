.class Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "TwoPhoneModeControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->updateTwoPhoneIcons()V

    return-void
.end method
