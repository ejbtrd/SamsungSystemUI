.class public final synthetic Lcom/android/keyguard/SecFaceAuthCallback$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/keyguard/SecFaceAuthCallback$$ExternalSyntheticLambda1;->f$0:I

    iput-object p2, p0, Lcom/android/keyguard/SecFaceAuthCallback$$ExternalSyntheticLambda1;->f$1:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/keyguard/SecFaceAuthCallback$$ExternalSyntheticLambda1;->f$0:I

    iget-object p0, p0, Lcom/android/keyguard/SecFaceAuthCallback$$ExternalSyntheticLambda1;->f$1:Ljava/lang/CharSequence;

    check-cast p1, Ljava/util/function/Consumer;

    invoke-static {v0, p0, p1}, Lcom/android/keyguard/SecFaceAuthCallback;->$r8$lambda$W_Q0TLjf3hk1dK3VWJCwZAV3plY(ILjava/lang/CharSequence;Ljava/util/function/Consumer;)V

    return-void
.end method
