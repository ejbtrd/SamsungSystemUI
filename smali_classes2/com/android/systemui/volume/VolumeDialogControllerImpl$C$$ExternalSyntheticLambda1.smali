.class public final synthetic Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/Map$Entry;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map$Entry;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$$ExternalSyntheticLambda1;->f$0:Ljava/util/Map$Entry;

    iput p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$$ExternalSyntheticLambda1;->f$1:I

    iput-boolean p3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$$ExternalSyntheticLambda1;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$$ExternalSyntheticLambda1;->f$0:Ljava/util/Map$Entry;

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$$ExternalSyntheticLambda1;->f$1:I

    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$$ExternalSyntheticLambda1;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->$r8$lambda$REiq5wXYh9eQzn5YPEkMgwSQvHU(Ljava/util/Map$Entry;IZ)V

    return-void
.end method
