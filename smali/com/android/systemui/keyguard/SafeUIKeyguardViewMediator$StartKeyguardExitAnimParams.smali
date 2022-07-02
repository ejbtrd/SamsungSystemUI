.class Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$StartKeyguardExitAnimParams;
.super Ljava/lang/Object;
.source "SafeUIKeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StartKeyguardExitAnimParams"
.end annotation


# instance fields
.field fadeoutDuration:J

.field mApps:[Landroid/view/RemoteAnimationTarget;

.field mFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field mNonApps:[Landroid/view/RemoteAnimationTarget;

.field mTransit:I

.field mWallpapers:[Landroid/view/RemoteAnimationTarget;

.field startTime:J


# direct methods
.method private constructor <init>(IJJ[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    .line 2856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2857
    iput p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$StartKeyguardExitAnimParams;->mTransit:I

    .line 2858
    iput-wide p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$StartKeyguardExitAnimParams;->startTime:J

    .line 2859
    iput-wide p4, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$StartKeyguardExitAnimParams;->fadeoutDuration:J

    .line 2860
    iput-object p6, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$StartKeyguardExitAnimParams;->mApps:[Landroid/view/RemoteAnimationTarget;

    .line 2861
    iput-object p7, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$StartKeyguardExitAnimParams;->mWallpapers:[Landroid/view/RemoteAnimationTarget;

    .line 2862
    iput-object p8, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$StartKeyguardExitAnimParams;->mNonApps:[Landroid/view/RemoteAnimationTarget;

    .line 2863
    iput-object p9, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$StartKeyguardExitAnimParams;->mFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    return-void
.end method

.method synthetic constructor <init>(IJJ[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$1;)V
    .locals 0

    .line 2842
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$StartKeyguardExitAnimParams;-><init>(IJJ[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method
