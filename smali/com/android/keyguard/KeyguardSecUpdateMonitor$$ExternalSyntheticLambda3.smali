.class public final synthetic Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;

.field public final synthetic f$1:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda3;->f$0:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda3;->f$1:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda3;->f$0:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda3;->f$1:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-static {v0, p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->$r8$lambda$h_yQTJtINjVcernhV9l1cjsASGE(Ljava/util/function/Consumer;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method
