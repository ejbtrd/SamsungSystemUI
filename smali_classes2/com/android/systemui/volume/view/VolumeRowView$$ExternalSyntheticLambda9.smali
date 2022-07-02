.class public final synthetic Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda9;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda9;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda9;->INSTANCE:Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda9;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-static {p1}, Lcom/android/systemui/volume/view/VolumeRowView;->$r8$lambda$Xw9mP4S1GwpVxBd1dlIJZqf_QaQ(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
