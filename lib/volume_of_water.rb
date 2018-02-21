#!/usr/bin/env ruby

module VolumeOfWater
	def self.call(input)
		return input.inject(0, &:+)
	end
end