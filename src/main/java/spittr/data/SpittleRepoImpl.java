package spittr.data;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import spittr.Spittle;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

@Component
public class SpittleRepoImpl implements SpittleRepository {
    private List<Spittle> spittles = new ArrayList<Spittle>();

    public SpittleRepoImpl(){
        this.spittles.addAll(createSpittleList(30));
    }

    public List<Spittle> findSpittles(long max, int count) {
        return spittles.stream().filter(spittle -> spittle.getLongitude() < max).limit(count).collect(Collectors.toList());
    }

    @Override
    public Spittle findOne(long id) {
        return spittles.stream().filter(spittle -> spittle.getId() == id).findFirst().get();
    }

    private List<Spittle> createSpittleList(int count) {
        List<Spittle> spittles = new ArrayList<Spittle>();
        for(int i=0; i < count; i++) {
            spittles.add(new Spittle(Long.valueOf(i), "spittle" + i
                    , new Date(), (double) i * 2142, (double) i / 3));
        }
        return spittles;
    }
}
