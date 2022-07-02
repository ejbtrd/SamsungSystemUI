.class public Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;
.super Ljava/lang/Object;
.source "DualDarInnerLockScreenController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/DualDarInnerLockScreenController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mKeyguardSecurityViewControllerFactory:Lcom/android/keyguard/KeyguardInputViewController$Factory;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mParent:Lcom/android/keyguard/KeyguardSecurityContainer;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;Landroid/view/LayoutInflater;Lcom/android/keyguard/KeyguardInputViewController$Factory;)V
    .locals 0

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput-object p1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;->mContext:Landroid/content/Context;

    .line 420
    iput-object p2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;->mParent:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 421
    iput-object p3, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 422
    iput-object p4, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;->mHandler:Landroid/os/Handler;

    .line 423
    iput-object p5, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 424
    iput-object p6, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;->mKeyguardSecurityViewControllerFactory:Lcom/android/keyguard/KeyguardInputViewController$Factory;

    return-void
.end method


# virtual methods
.method public create(Lcom/android/keyguard/KeyguardSecurityContainerController;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/DualDarKeyguardSecurityCallback;)Lcom/android/keyguard/DualDarInnerLockScreenController;
    .locals 11

    .line 430
    new-instance v10, Lcom/android/keyguard/DualDarInnerLockScreenController;

    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;->mParent:Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v4, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v7, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v9, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;->mKeyguardSecurityViewControllerFactory:Lcom/android/keyguard/KeyguardInputViewController$Factory;

    move-object v0, v10

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/keyguard/DualDarInnerLockScreenController;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardSecurityContainerController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/DualDarKeyguardSecurityCallback;Landroid/os/Handler;Landroid/view/LayoutInflater;Lcom/android/keyguard/KeyguardInputViewController$Factory;)V

    return-object v10
.end method
