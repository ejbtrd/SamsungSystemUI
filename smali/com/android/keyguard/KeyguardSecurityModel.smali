.class public Lcom/android/keyguard/KeyguardSecurityModel;
.super Ljava/lang/Object;
.source "KeyguardSecurityModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    }
.end annotation


# instance fields
.field private final mIsPukScreenAvailable:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public static synthetic $r8$lambda$Csy6W7Fs3TE8ZZ37FOoU7VLTN7Y(Lcom/android/keyguard/KeyguardSecurityModel;I)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityModel;->lambda$getSecurityMode$0(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroid/content/res/Resources;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x11100e9

    .line 79
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mIsPukScreenAvailable:Z

    .line 81
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 82
    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method

.method public static isSecurityViewOneHanded(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z
    .locals 1

    .line 163
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$getSecurityMode$0(I)Ljava/lang/Integer;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 4

    .line 86
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 87
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v1}, Lcom/android/systemui/knox/KnoxStateMonitor;->isAdminLockEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->AdminLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    .line 91
    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mIsPukScreenAvailable:Z

    const/4 v2, 0x3

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 92
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(I)I

    move-result v1

    .line 91
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    .line 97
    :cond_1
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_SIM_PERSO_LOCK:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/16 v3, 0xc

    .line 98
    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(I)I

    move-result v1

    .line 97
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPerso:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    .line 103
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v3, 0x2

    .line 104
    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(I)I

    move-result v1

    .line 103
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 105
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isSubIdLockedByMDM()Z

    move-result v0

    if-nez v0, :cond_3

    .line 106
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isRemoteLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 112
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getRemoteLockType()I

    move-result v0

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_4

    goto :goto_0

    .line 116
    :cond_4
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->KNOXGUARD:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    .line 114
    :cond_5
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->RMM:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    .line 122
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isCarrierLock()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 123
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SKTCarrierLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    .line 126
    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isFMMLock()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 127
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->FMM:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    .line 131
    :cond_8
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/KeyguardSecurityModel$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSecurityModel;I)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_e

    const/high16 p1, 0x10000

    if-eq p0, p1, :cond_d

    const/high16 p1, 0x20000

    if-eq p0, p1, :cond_c

    const/high16 p1, 0x30000

    if-eq p0, p1, :cond_c

    const/high16 p1, 0x40000

    if-eq p0, p1, :cond_b

    const/high16 p1, 0x50000

    if-eq p0, p1, :cond_b

    const/high16 p1, 0x60000

    if-eq p0, p1, :cond_b

    const/high16 p1, 0x70000

    if-eq p0, p1, :cond_a

    const/high16 p1, 0x80000

    if-ne p0, p1, :cond_9

    goto :goto_1

    .line 153
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown security quality:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 150
    :cond_a
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SmartcardPIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    .line 142
    :cond_b
    :goto_1
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    .line 136
    :cond_c
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    .line 145
    :cond_d
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    .line 147
    :cond_e
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0
.end method
