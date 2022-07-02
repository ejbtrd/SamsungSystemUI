.class public final synthetic Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda27;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda27;->f$1:Z

    iput-boolean p3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda27;->f$2:Z

    iput-boolean p4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda27;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda27;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda27;->f$1:Z

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda27;->f$2:Z

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda27;->f$3:Z

    invoke-static {v0, v1, v2, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->$r8$lambda$ipXClB1vH16zJ_LRbPmpRaGzGvU(Lcom/android/keyguard/KeyguardUpdateMonitor;ZZZ)V

    return-void
.end method
