.class public final synthetic Lcom/android/systemui/volume/VolumeInfraMediatorImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/volume/VolumeInfraMediatorImpl;

.field public final synthetic f$1:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/VolumeInfraMediatorImpl;Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/volume/VolumeInfraMediatorImpl;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    iput-boolean p3, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/volume/VolumeInfraMediatorImpl;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl$$ExternalSyntheticLambda0;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->$r8$lambda$e523lKWHVcT8A6tMD1HtqGuSjnM(Lcom/android/systemui/volume/VolumeInfraMediatorImpl;Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;Z)V

    return-void
.end method
