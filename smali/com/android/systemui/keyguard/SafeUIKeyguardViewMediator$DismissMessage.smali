.class Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$DismissMessage;
.super Ljava/lang/Object;
.source "SafeUIKeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DismissMessage"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/internal/policy/IKeyguardDismissCallback;

.field private final mMessage:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .locals 0

    .line 2954
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2955
    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$DismissMessage;->mCallback:Lcom/android/internal/policy/IKeyguardDismissCallback;

    .line 2956
    iput-object p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$DismissMessage;->mMessage:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/android/internal/policy/IKeyguardDismissCallback;
    .locals 0

    .line 2960
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$DismissMessage;->mCallback:Lcom/android/internal/policy/IKeyguardDismissCallback;

    return-object p0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 0

    .line 2964
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$DismissMessage;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method
