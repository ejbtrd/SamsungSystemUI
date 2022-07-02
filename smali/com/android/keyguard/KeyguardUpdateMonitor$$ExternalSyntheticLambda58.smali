.class public final synthetic Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda58;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/KeyguardBatteryStatus;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/KeyguardBatteryStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda58;->f$0:Lcom/android/systemui/statusbar/KeyguardBatteryStatus;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda58;->f$0:Lcom/android/systemui/statusbar/KeyguardBatteryStatus;

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->$r8$lambda$v-g10gOwNLQZR9kGgKuhYlyJ3j0(Lcom/android/systemui/statusbar/KeyguardBatteryStatus;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method
