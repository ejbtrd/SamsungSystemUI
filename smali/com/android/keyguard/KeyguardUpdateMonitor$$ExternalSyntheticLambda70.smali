.class public final synthetic Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda70;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(ZZZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda70;->f$0:Z

    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda70;->f$1:Z

    iput-boolean p3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda70;->f$2:Z

    iput p4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda70;->f$3:I

    iput p5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda70;->f$4:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda70;->f$0:Z

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda70;->f$1:Z

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda70;->f$2:Z

    iget v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda70;->f$3:I

    iget v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda70;->f$4:I

    move-object v5, p1

    check-cast v5, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-static/range {v0 .. v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->$r8$lambda$TSH_OwqzCTJZ39VtDerMJ3iyT8k(ZZZIILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method
