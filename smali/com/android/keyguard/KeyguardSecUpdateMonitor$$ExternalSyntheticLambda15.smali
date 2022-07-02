.class public final synthetic Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/cover/CoverState;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda15;->f$0:Lcom/samsung/android/cover/CoverState;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda15;->f$0:Lcom/samsung/android/cover/CoverState;

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->$r8$lambda$enDRHMD8RkN_POw3CobPvhkCNgI(Lcom/samsung/android/cover/CoverState;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method
