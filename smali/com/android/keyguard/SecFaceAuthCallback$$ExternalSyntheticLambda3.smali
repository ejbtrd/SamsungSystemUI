.class public final synthetic Lcom/android/keyguard/SecFaceAuthCallback$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/SecFaceAuthCallback$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/SecFaceAuthCallback$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;

    check-cast p1, Ljava/util/function/Consumer;

    invoke-static {p0, p1}, Lcom/android/keyguard/SecFaceAuthCallback;->$r8$lambda$ipopgVNNunslu32RjfOX276UVKw(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;Ljava/util/function/Consumer;)V

    return-void
.end method
