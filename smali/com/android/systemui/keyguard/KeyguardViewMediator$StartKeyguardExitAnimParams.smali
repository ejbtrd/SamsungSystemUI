.class Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
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

    .line 3307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3308
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mTransit:I

    .line 3309
    iput-wide p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->startTime:J

    .line 3310
    iput-wide p4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->fadeoutDuration:J

    .line 3311
    iput-object p6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mApps:[Landroid/view/RemoteAnimationTarget;

    .line 3312
    iput-object p7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mWallpapers:[Landroid/view/RemoteAnimationTarget;

    .line 3313
    iput-object p8, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mNonApps:[Landroid/view/RemoteAnimationTarget;

    .line 3314
    iput-object p9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    return-void
.end method

.method synthetic constructor <init>(IJJ[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;Lcom/android/systemui/keyguard/KeyguardViewMediator$1;)V
    .locals 0

    .line 3293
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;-><init>(IJJ[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method