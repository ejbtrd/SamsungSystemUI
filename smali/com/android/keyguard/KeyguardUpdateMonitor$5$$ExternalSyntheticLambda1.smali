.class public final synthetic Lcom/android/keyguard/KeyguardUpdateMonitor$5$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardUpdateMonitor$5;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor$5;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$5$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor$5;

    iput p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$5$$ExternalSyntheticLambda1;->f$1:I

    iput-boolean p3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$5$$ExternalSyntheticLambda1;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$5$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor$5;

    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$5$$ExternalSyntheticLambda1;->f$1:I

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$5$$ExternalSyntheticLambda1;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->$r8$lambda$zSZ9_YDfIzumo9tF-VcHkbWc2JA(Lcom/android/keyguard/KeyguardUpdateMonitor$5;IZ)V

    return-void
.end method
