.class public final synthetic Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/SecFpAuthCallback;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/SecFpAuthCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/SecFpAuthCallback;

    iput p2, p0, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/SecFpAuthCallback;

    iget p0, p0, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda1;->f$1:I

    check-cast p1, Ljava/util/function/Consumer;

    invoke-static {v0, p0, p1}, Lcom/android/keyguard/SecFpAuthCallback;->$r8$lambda$76hFM2GBygOwN2AW4jj9AAkY3Vg(Lcom/android/keyguard/SecFpAuthCallback;ILjava/util/function/Consumer;)V

    return-void
.end method
