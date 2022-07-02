.class public Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitorWrapper.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;->mContext:Landroid/content/Context;

    .line 16
    iput-object p2, p0, Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method


# virtual methods
.method public setDialogStateForInDisplayFingerprint(Z)V
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setDialogStateForInDisplayFingerprint(Z)V

    return-void
.end method
