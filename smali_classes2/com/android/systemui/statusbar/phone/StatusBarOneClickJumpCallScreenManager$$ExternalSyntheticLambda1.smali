.class public final synthetic Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;

.field public final synthetic f$1:Landroid/telecom/TelecomManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;Landroid/telecom/TelecomManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$$ExternalSyntheticLambda1;->f$1:Landroid/telecom/TelecomManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$$ExternalSyntheticLambda1;->f$1:Landroid/telecom/TelecomManager;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->$r8$lambda$vP0HBn_NwZzeprUESD4LAi-M8vA(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;Landroid/telecom/TelecomManager;)V

    return-void
.end method
