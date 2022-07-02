.class public final synthetic Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda32;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda32;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda32;->INSTANCE:Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda32;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-static {p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->$r8$lambda$7TopA7LA_2ZB43lRx9de44xMO0c(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method
