.class public final synthetic Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda24;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda24;-><init>()V

    sput-object v0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda24;->INSTANCE:Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda24;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->$r8$lambda$Vak6WL2c1iDubSPuR1zxX4FyCw0(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method
